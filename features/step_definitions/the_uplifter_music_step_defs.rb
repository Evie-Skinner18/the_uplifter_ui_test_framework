require_relative '../lib/uplifter_site'
include TheUplifterSite

# homepage: flag so high
Given('that I can open the website') do
  the_uplifter_home.visit_homepage
end

Given('I can navigate to the homepage') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I click on the play button for Flag So High') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the website should play Flag So High') do
  pending # Write code here that turns the phrase above into concrete actions
end

# homepage: brunel
When('I click on the play button for the Brunel Goods Shed recording') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the website should play the Brunel Goods Shed recording') do
  pending # Write code here that turns the phrase above into concrete actions
end

# @music
Given('that I can open the music page') do
  music_page.visit_music
end
