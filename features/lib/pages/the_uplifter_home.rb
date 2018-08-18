# https://www.theuplifter.co.uk/

require 'capybara/dsl'

# This is the POM for the homepage
class Homepage

  include Capybara::DSL

  def initialize
    @homepage_url = 'https://www.theuplifter.co.uk/'
    @homepage_button = 'Home'

  end

  def visit_homepage
    visit(@homepage_url)
  end






end #end of class
