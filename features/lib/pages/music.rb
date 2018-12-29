
class Music

  #include the module so we can now run nice Capybara methods straigth away
    include Capybara::DSL

  def initialize
    @music_url = "https://www.theuplifter.co.uk/music"
    @stroud_play_xpath = '//*[@id="page-content-wrap"]/div/div[1]/div/div/div/section/article/div/div/div[2]/header/div/div[1]/a/span[1]'

  end # end of initialize

  def visit_music
    visit(@music_url)
  end

end # end of class
