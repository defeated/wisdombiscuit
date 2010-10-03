Feature: Manage fortunes
  In order to contribute to the site
  As a user
  I want to manage my fortunes

  Scenario: Add fortune
    Given I am on the new fortune page
    When I fill in "Text" with "live long and prosper"
    And I press "Create Fortune"
    Then I should see "Fortune successfully created"
    And I should see "live long and prosper"

  Scenario: Edit fortune
    Given a fortune saying "live long and prosper"
    And I am on the edit fortune page
    When I fill in "Text" with "live long and prosper or else!"
    And I press "Update Fortune"
    Then I should see "Fortune successfully updated"
    And I should see "live long and prosper or else!"

  Scenario: Delete fortune
    Given a fortune saying "live long and prosper"
    And I am on the edit fortune page
    When I follow "Destroy"
    Then I should see "Fortune successfully destroyed"
    And I should not see "live long and prosper"

  Scenario: Invalid fortune
    Given I am on the new fortune page
    When I press "Create Fortune"
    Then I should see "prohibited this Fortune from being saved"

  Scenario: Duplicate fortune
    Given a fortune saying "live long and prosper"
    And I am on the new fortune page
    When I fill in "Text" with "live long and prosper"
    And I press "Create Fortune"
    Then I should see "prohibited this Fortune from being saved"