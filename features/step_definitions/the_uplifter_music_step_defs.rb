# no need to require the superclass for site as it's a module so available everywhere

# homepage: flag so high
Given('that I can open the website') do
  the_uplifter_home.visit_homepage
end

And('I can navigate to the homepage') do
  expect(the_uplifter_home.current_url).to eq("https://www.theuplifter.co.uk/")
end

When('I scroll down to Flag So High') do
  the_uplifter_home.execute_script "window.scrollBy(0,6000)"
  the_uplifter_home.find_all_songs
end

Then('I can click on and play Flag So High') do
  the_uplifter_home.play_flag_so_high
  sleep(10)
end

# homepage: brunel
When('I scroll down to the Brunel Goods Shed recording') do
  the_uplifter_home.execute_script "window.scrollBy(0,8000)"
end

Then('I can click on and play the Brunel Goods Shed recording') do
  the_uplifter_home.play_brunel_recording
  sleep(10)
end

# @music
Given('that I can open the music page') do
  music_page.visit_music
end
