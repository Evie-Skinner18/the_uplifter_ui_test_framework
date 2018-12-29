# no need to require the superclass for site as it's a module so available everywhere

# these tests begin from homepage
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
  sleep(5)
end

# homepage: brunel
When('I scroll down to the Brunel Goods Shed recording') do
  the_uplifter_home.execute_script "window.scrollBy(0,8000)"
end

Then('I can click on and play the Brunel Goods Shed recording') do
  the_uplifter_home.play_brunel_recording
  sleep(5)
end

# @homepage_interview
When("I scroll down to the Mixcloud interview") do
  the_uplifter_home.execute_script "window.scrollBy(0,6000)"
end

Then("I can click on and play the interview") do
  the_uplifter_home.play_mixcloud_interview
end

# music link
Given("I can click on the Music button on the navbar") do
  the_uplifter_home.visit_music_from_homepage
end

Then("I should be taken to the music page") do
  expect(music_page.current_url).to eq(music_page.music_url)
end

# @music. these begin from the music page
Given('that I can open the music page') do
  music_page.visit_music
end

When("I click on the play button for the Stroud vocal recording") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the website should play the Stroud vocal recording") do
  pending # Write code here that turns the phrase above into concrete actions
end
