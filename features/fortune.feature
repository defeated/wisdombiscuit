Feature: read a fortune
  In order to read a fortune
  As a visitor
  I want to view a fortune on a page

  Scenario: View Fortune
    Given a fortune saying "live long and prosper"
    When I am on the homepage
    Then I should see "live long and prosper"
  
