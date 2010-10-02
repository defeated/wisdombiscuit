Feature: read a fortune
  In order to read a fortune
  As a visitor
  I want to view a fortune on a page

  Scenario: View Fortune
    Given a fortune saying "live long and prosper"
    When I am on the fortunes page
    Then I should see "live long and prosper"
  
  Scenario: View Random Fortune
    Given a list of fortunes
    When I am on the homepage
    Then I should see a random fortune

  Scenario: No fortunes
    Given no fortunes
    When I am on the homepage
    Then I should see "No fortunes found"

