#This is like the spec helper where all the configuration goes

#Were using capybara inside cucumebr this time
require 'capybara/cucumber'
require 'capybara/dsl'
# may need pry later for authentication testing
#require 'pry'

# require the module/superclass here
require_relative '../lib/uplifter_site'
# require 'dotenv'
# Dotenv.load(".env")

#CAPYBARA built around Selenium so need to configure the driver from here.
#Set up the driver AS WE RUN CUCUMBER
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Cap config methods
Capybara.configure do |config|
  #If you don't include this it will not allow you to acces things that are hidden to the user but
  # available in the DOM. We want to access those!
  config.ignore_hidden_elements = false
  #wait for the UI to respond for max 30s
  config.default_max_wait_time = 30
  # use chrome as default browser
  config.default_driver = :chrome
end

#the world object is the scope of Cucumber
World(TheUplifterSite)
