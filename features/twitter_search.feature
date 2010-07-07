Feature: Twitter Search
  In order to mock some HTTP requests
  As a tester
  I want something to make HTTP requests

  Scenario: Searching for and returning items
    Given I am on the homepage
    And I fill in "query" with "integrum"
    When I press "Search"
    Then show me the page
    Then I should see "Your search returned 15 results"
    And I should see "@integrum"



