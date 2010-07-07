Feature: Github Search
  In order to mock some HTTP requests
  As a tester
  I want something to make HTTP requests

  Scenario: Searching for and returning a user
    Given I am on the homepage
    And I fill in "query" with "Clayton"
    When I press "Search"
    Then I should see "Name: Clayton"
    And I should see "Public Repos: 14"
    And I should see "Location: Arizona, USA"
    And I should see "Login: clayton"



