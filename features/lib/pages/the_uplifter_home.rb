# https://www.theuplifter.co.uk/

# This is the POM for the homepage
class Homepage
#include the module so we can now run nice Capybara methods straigth away
  include Capybara::DSL

# each instance of the Homepage object will automatically have all these properties
  def initialize
    @homepage_url = 'https://www.theuplifter.co.uk/'
    @homepage_button = 'Home'
    @brunel_recording_xpath = '//*[@id="page-content-wrap"]/div/div[8]/div/div/div/section/article/div/div[2]/header/div/div[1]/a'
    @music_buttons = 'button button-circle button-action play-button'
    @music_buttons_array = []
    @mixcloud_play_button_class = 'widget-play-button'
    # @mixcloud_interview_xpath = '/html/body/div[1]/div/div[2]/div/div[1]/div[4]'
    @navbar_links_class = 'top'
    @navbar_links_array = []
    # @navbar_top_class = 'top'
    @music_navbar_text = 'Music'
  end

  def visit_homepage
    visit(@homepage_url)
  end

  def find_all_navbar_links
    all(@navbar_links_class).each { |element| @navbar_links_array.push(element)}
  end

  def find_all_songs
    all(@music_buttons).each { |button| @music_buttons_array.push(button)}
  end

  def play_all_songs_on_homepage
    @music_buttons_array.each do |button|
      button.click
    end
    
  end

  def play_brunel_recording
    find(:xpath, @brunel_recording_xpath).click
  end

  def play_mixcloud_interview
    find(:css, @mixcloud_play_button_class).click
  end

  def visit_music_from_homepage
    #click_link(@music_page_button)
     # @music_link = all('top')[2]

     find_link(@navbar_links_array[5]).click_link
    #  click_link(@navbar_links_array[2])
    #  within() do
    #    within('div') do
    #      click_link('Music')
    #    end
    #  end

  end







end #end of class
