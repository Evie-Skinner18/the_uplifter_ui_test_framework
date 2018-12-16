# https://www.theuplifter.co.uk/

# This is the POM for the homepage
class Homepage
#include the module so we can now run nice Capybara methods straigth away
  include Capybara::DSL

# each instance of the Homepage object will automatically have all these properties
  def initialize
    @homepage_url = 'https://www.theuplifter.co.uk/'
    @homepage_button = 'Home'
    @flag_so_high_play_button = 'Play'
    @flag_so_high_pause_button = 'Pause'


  end

  def visit_homepage
    visit(@homepage_url)
  end

  # def scroll_down
  #   Homepage.
  # end

  def play_flag_so_high
    click_link(@flag_so_high_play_button)
  end








end #end of class
