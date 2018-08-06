# https://www.theuplifter.co.uk/

require 'capybara/dsl'

class Homepage

  include Capybara::DSL

  def initialize
    @homepage_url = "https://www.theuplifter.co.uk/"
    @homepage_button = "Home"

  end # end of initialize

  def open_website
    visit(@homepage_url)
  end

end #end of class
