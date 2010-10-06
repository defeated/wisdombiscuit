Feature: Public API
  In order to interact with other software
  As a third party developer
  I want to call the system remotely
  
  Background:
    Given a valid user "user@domain.com" with password "pass123"
    And a valid api token "1234567890"
    And a fortune saying "live long and prosper"

  Scenario: Get fortune as JSON
    When I go to the random fortunes page with token "1234567890" and format "json"
    Then I should see JSON:
      """
      {"fortune":{"text":"live long and prosper"}}
      """

  Scenario: Get fortune as XML
    When I go to the random fortunes page with token "1234567890" and format "xml"
    Then I should see "live long and prosper" within "text"