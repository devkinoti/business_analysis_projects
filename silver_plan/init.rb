# Calculate second lowerst silver plan
## Silver plan Calculato
# 
##
# Run this file with ruby init.rb to start the program

APP_ROOT = File.dirname(__FILE__)

$:.prepend(File.join(APP_ROOT, "lib"))

require "silver_plan"


silver_plan = SilverPlan.new(zips_csv_file: "zips.csv", slcsp_file: "slcsp.csv", plans_file:"plans.csv")
silver_plan.start!

  