
@music
Feature: as a user I should be able to listen to The Uplifter's music


@homepage_flag
Scenario: I should be able to listen to Flag So High from the homepage
  Given that I can open the website
  And I can navigate to the homepage
  When I scroll down to Flag So High
  Then I can click on and play Flag So High

@homepage_brunel
Scenario: I should be able to listen to the Brunel Goods Shed recording from the homepage
  Given that I can open the website
  And I can navigate to the homepage
  When I scroll down to the Brunel Goods Shed recording
  Then I can click on and play the Brunel Goods Shed recording

@homepage_interview
Scenario: I should be able to listen to the Mixcloud recording of Tom's radio interview
  Given that I can open the website
  And I can navigate to the homepage
  When I scroll down to the Mixcloud interview
  Then I can click on and play the interview

@homepage_music_link
Scenario: I should be able to navigate to the music page from the homepage
  Given that I can open the website
  And I can click on the Music button on the navbar
  Then I should be taken to the music page

@music_page_stroud_vocal
Scenario: I should be able to play the vocal version of Stroud from the music page
  Given that I can open the music page
  When I click on the play button for the Stroud vocal recording
  Then the website should play the Stroud vocal recording
