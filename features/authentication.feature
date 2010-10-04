Feature: User authentication
  In order to contribute to the system
  As a user
  I want to login and manage fortunes
  
  Scenario: Signup
    Given I am on the signup page
    When I fill in "Email" with "user@domain.com"
    And I fill in "Password" with "pass123"
    And I fill in "Password confirmation" with "pass123"
    And I press "Sign up"
    Then I should see "You have signed up successfully"
    
  Scenario: Login
    Given a valid user "user@domain.com" with password "pass123"
    When I am on the login page
    And I fill in "Email" with "user@domain.com"
    And I fill in "Password" with "pass123"
    And I press "Sign in"
    Then I should see "Signed in successfully"
    
  Scenario: Invalid Login
    Given a valid user "user@domain.com" with password "pass123"
    When I am on the login page
    And I fill in "Email" with "fake@bad.com"
    And I fill in "Password" with "badpass"
    And I press "Sign in"
    Then I should see "Invalid email or password"