class Slcsp
  
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
    create_second_lowest_plans_table
    import_second_lowest_plans_data
  end

  def self.create_second_lowest_plans_table
    table_name = $db.execute("select name from sqlite_master where type='table' and name='second_lowest_silver_plans'")
    byebug
    if table_name.empty? 
      puts "\n === Creating the second_lowest_silver_plans table === \n"
      $db.execute %q{
        create table second_lowest_silver_plans(
          id integer primary key,
          zipcode varchar(10),
          rate decimal(6,2)
        )
      }

      puts "\n === second_lowest_silver_plans table has been created === \n "
    elsif table_name.first["name"] == "second_lowest_silver_plans"
      puts "second_lowest_silver_plans table already exists"
    end
  end

  def self.import_second_lowest_plans_data
    second_lowest_silver_plans_count = $db.execute("select count(*) as second_lowest_silver_plans_count from second_lowest_silver_plans")
    byebug
    # this check is assuming there will be no more additions to the csv
    # assuming that the slcsp.csv is the final input and needs to be only imported once
    if second_lowest_silver_plans_count.first["second_lowest_silver_plans_count"] == 0
      puts "\n === importing data === \n"
      attributes = %w{zipcode, rate}
      csv_text = File.read(self.filepath)
      csv = CSV.parse(csv_text, headers: true)
      csv.each do |row|
        $db.execute("insert into second_lowest_silver_plans (zipcode, rate) values (?, ?)", row["zipcode"],row["rate"])
      end
  
      puts "\n === completed importing data into plans table ===\n "

    else 
      puts "Second Lowest silver plans table is already populated from slcsp.csv"
    end

  end
end