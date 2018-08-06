Feature: as a user I should be able to listen to The Uplifter's music

@homepage_flag
Scenario: I should be able to listen to Flag So High from the homepage
  Given that I can open the website
  And I can navigate to the homepage
  When I click on the play button for Flag So High
  Then the website should play Flag So High
  
@homepage_brunel
Scenario: I should be able to listen to the Brunel Goods Shed recording from the homepage
  Given that I can open the website
  And I can navigate to the homepage
  When I click on the play button for the Brunel Goods Shed recording
  Then the website should play the Brunel Goods Shed recording
