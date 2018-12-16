require 'capybara/dsl'

class Music
  def initialize
    @music_url = "https://www.theuplifter.co.uk/music"

  end # end of initialize

  def visit_music
    visit(@music_url)
  end

end # end of class
