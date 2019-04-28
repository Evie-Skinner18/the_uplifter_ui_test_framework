
@gigs
Feature: as a user I should be able to view information about Tom's performances and purchase tickets

@homepage_buy_tix
Scenario: I should be able to purchase tickets to see The Uplifter in fewer than five clicks
  Given that I can open the website
  And I can navigate to the homepage
  When I scroll down to 'The Uplifter Tour Dates'
  And I click on the BUY TICKETS link
  Then I should be taken to the Ents 24 page in a new tab

# test that all the info links on this box work
@homepage_upcoming_gig_info
Scenario: I should be able to view information about The Uplifter's next performance
  Given that I can open the website
  And I can navigate to the homepage
  When I scroll down to the poster for the next live show
  And I click on the poster
  Then I should be taken to the website of the venue in which the show will take place, in a new tab

Scenario: I should be able to view the location of The Uplifter's next performance
  Given that I can open the website
  And I can navigate to the homepage
  When I scroll down to the details of the next live show
  And I click on the location link
  Then I should be taken to the Google Maps location of the venue in a new tab

Scenario: I should be able to purchase tickets from the details of The Uplifter's next performance
  Given that I can open the website
  And I can navigate to the homepage
  When I scroll down to the details of the next live show
  And I click on the GET TICKETS link here
  Then I should be taken to the website of the venue in which the show will take place, in a new tab
