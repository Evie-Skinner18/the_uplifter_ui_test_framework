# https://www.theuplifter.co.uk/

# This is the POM for the homepage
class Homepage
#include the module so we can now run nice Capybara methods straigth away
  include Capybara::DSL

# each instance of the Homepage object will automatically have all these properties
  def initialize
    @homepage_url = 'https://www.theuplifter.co.uk/'
    @homepage_button = 'Home'
    @flag_so_high_xpath = '//*[@id="page-content-wrap"]/div/div[3]/div/div[1]/div[7]/section/article/div/div[2]/header/div/div[1]/a'
    @brunel_recording_xpath = '//*[@id="page-content-wrap"]/div/div[8]/div/div/div/section/article/div/div[2]/header/div/div[1]/a'
    @music_buttons = 'play-button'
    @music_buttons_array = []
    @mixcloud_play_buttons_array = []
    @mixcloud_interview_xpath = '/html/body/div[1]/div/div[2]/div/div[1]/div[4]'
    @navbar_links_array = all('non-mobile')
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

  def play_flag_so_high
    # all(@music_buttons).each { |button| @music_buttons_array.push(button)}
    # find(@music_buttons_array[0]).click
    # click_on(@music_buttons_array[0])
    find(:xpath, @flag_so_high_xpath).click
  end

  def play_brunel_recording
    find(:xpath, @brunel_recording_xpath).click
  end

  def play_mixcloud_interview
    find(:xpath, @mixcloud_interview_xpath).click
  end

  def visit_music_from_homepage
    #click_link(@music_page_button)
     # @music_link = all('top')[2]
     # click_link(@music_link)
     within('main-nav') do
       within('ul li') do
         click_link('Music')
       end
     end
  end







end #end of class
