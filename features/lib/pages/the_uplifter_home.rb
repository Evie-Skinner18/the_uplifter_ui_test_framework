# https://www.theuplifter.co.uk/

# This is the POM for the homepage
class Homepage
#include the module so we can now run nice Capybara methods straigth away
  include Capybara::DSL

# each instance of the Homepage object will automatically have all these properties
  def initialize
    @homepage_url = 'https://www.theuplifter.co.uk/'
    @homepage_button = 'Home'
    @flag_so_high_button

  end

  def visit_homepage
    visit(@homepage_url)
  end








end #end of class
