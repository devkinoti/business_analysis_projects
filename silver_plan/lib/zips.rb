class Zips 

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
    create_zips_table
    import_zips_data
  end

  def self.create_zips_table
    table_name = $db.execute("select name from sqlite_master where type='table' and name='zips'")
    if table_name.empty?
      puts "\n === Creating the zips table === \n"
      $db.execute %q{
        create table zips(
          id integer primary key,
          zipcode varchar(10),
          state varchar(3),
          county_code integer,
          name varchar(50),
          rate_area integer
        )
      }
      puts "\n === zips table has been created === \n "
    elsif table_name.first["name"] == "zips"
      puts "Zips table already exists"
    end
  end

  def self.import_zips_data 
    zipcodes_count = $db.execute("select count(*) as zipcodes_count from zips")
    byebug
    # this check is assuming there will be no more additions to the csv
    # assuming that the zips.csv is the final input and needs to be only imported once
    if zipcodes_count.first["zipcodes_count"] == 0
      puts "\n === importing data === \n"
      attributes = %w{zipcode, state, county_code, name, rate_area}
      csv_text = File.read(self.filepath)
      csv = CSV.parse(csv_text, headers: true)
      csv.each do |row|
        $db.execute("insert into zips (zipcode, state, county_code, name, rate_area) values (?, ?, ?, ?, ?)", row["zipcode"], row["state"], row["county_code"], row["name"], row["rate_area"])
      end
  
      puts "\n === completed importing data into zips table ===\n "
      
    else

      puts "Zips table is already populated from zips.csv"
    end

  end


end