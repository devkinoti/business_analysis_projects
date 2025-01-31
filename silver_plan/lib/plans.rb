class Plans 

  $db = SQLite3::Database.open("silverplandbfile")

  @@filepath = nil

  def self.filepath=(path=nil)
    @@filepath = File.join(APP_ROOT, path)
  end

  def self.filepath 
    @@filepath
  end

  def self.file_usable?
    return false unless @@filepath
    return false unless File.exists?(@@filepath)
    return false unless File.readable?(@@filepath)
    return true
  end

  def self.import_data
    create_plans_table
    import_plans_data
  end

  def self.create_plans_table
    table_name = $db.execute("select name from sqlite_master where type='table' and name='plans'")
    byebug
    if table_name.empty? 
      puts "\n === Creating the plans table === \n"
      $db.execute %q{
        create table plans(
          id integer primary key,
          plan_id varchar(50),
          state varchar(4),
          metal_level varchar(15),
          rate decimal(6,2),
          rate_area integer
        )
      }
      puts "\n === plans table has been created === \n "
    elsif table_name.first["name"] == "plans"
      puts "Plans table already exists"
    end
  end

  def self.import_plans_data 
    plans_count = $db.execute("select count(*) as plans_count from plans")
    byebug
    # this check is assuming there will be no more additions to the csv
    # assuming that the plans.csv is the final input and needs to be only imported once
    if plans_count.first["plans_count"] == 0
      puts "\n === importing data === \n"
      attributes = %w{plan_id, state, metal_level, rate, rate_area}
      csv_text = File.read(self.filepath)
      csv = CSV.parse(csv_text, headers: true)
      csv.each do |row|
        $db.execute("insert into plans (plan_id, state, metal_level, rate, rate_area) values (?, ?, ?, ?, ?)", row["plan_id"], row["state"], row["metal_level"], row["rate"], row["rate_area"])
      end
  
      puts "\n === completed importing data into plans table ===\n "

    else 
      puts "Plans table is already populated from plans.csv"
    end

  end

end