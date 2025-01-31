require "sqlite3"
require "csv"
require "plans"
require "slcsp"
require "zips"
require "byebug"

class SilverPlan 

  @@user_actions = ["get_silver_rates", "quit"]

  def self.user_actions 
    @@user_actions
  end


  def initialize(path_options={})
    puts "Loading Database..."
    puts "Sqlite3 defined" if defined?(SQLite3::Database)

    $db = SQLite3::Database.new("silverplandbfile")

    $db.results_as_hash = true

    Zips.filepath = path_options[:zips_csv_file]
    Plans.filepath = path_options[:plans_file]
    Slcsp.filepath = path_options[:slcsp_file]

    # byebug

    if Zips.file_usable?
      puts "\n\n <<< Found Zips data file and it is usable  >>>\n\n"
      byebug
      Zips.import_data
    else
      puts "\n\n <<< Zips data file not available. Please add the zips data file to use the program >>> \n\n"
      conclusion
    end

    if Plans.file_usable?
      puts "\n\n <<< Found Plans data file and it is usable >>> \n\n"
      byebug 
      Plans.import_data
    else
      puts "\n\n <<< Plans data file not available. Please add the plans data file to use the program >>> \n\n"
      conclusion
    end

    if Slcsp.file_usable?
      puts "\n\n <<< Found Slcsp data file and it is usable >>> \n\n"
      byebug
      Slcsp.import_data
    else
      puts "\n\n <<< Zips data file not available. Please add the slcsp data file to use the program >>> \n\n"
      conclusion
    end

  end

  def start!
    introduction 

    result = nil 

    until result == :quit
      action = get_action
      result = perform_action(action)
    end

    conclusion
  end

  def get_action
    action = nil

    # this keeps asking the user for input until we get valid user actions predefined in the class variable user_actions array
    until SilverPlan.user_actions.include?(action)
      puts "Here are the available user actions: " + SilverPlan.user_actions.join(", ") if action
      print "> "
      response = gets.chomp
      action = response.downcase.strip
    end
    return action
  end

  def perform_action(action)
    case action
    when "get_silver_rates"
      get_second_lowest_silver_plan
    when "quit"
      return :quit 
    else
      puts "\n\n *** That command is not available.Please try again \n\n"
    end
  end

  def get_second_lowest_silver_plan 

  end

  def introduction 
    puts "\n\n<<< Welcome to the Second Lowest Silver plan calculator >>>\n\n"
    puts "This is an interactive application to help you get the second lowest silver plan\n\n"
  end

  def disconnect_and_quit
    $db.close
    puts "\n<<< Silverplan program disconnecting and quiting >>>\n\n\n"
    puts "\n\n <<< Done \n\n\n"
    exit
  end

  def conclusion
    disconnect_and_quit
  end
end