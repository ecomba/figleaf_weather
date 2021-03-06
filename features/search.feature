Feature: Search
  In order to find out what I should wear today
  As a user
  I want to search for my town

  Scenario: Search with many results
    Given I am on the homepage
    When I fill in "location" with "London"
    And I press "search"
    Then I should see the cities for "London"
    
  Scenario: Search with one result
    Given I am on the homepage
    When I fill in "location" with "60048"
    And I press "search"
    Then I should be on the display weather page for "60048"
    Then I should see the information for "60048"
  
  Scenario: No matching results
    Given I am on the homepage
    When I fill in "location" with "gibberish"
    And I press "search"
    Then I should be on the homepage
    And I should see an error message
  
  Scenario: second search
    Given I am on the homepage
    When I fill in "location" with "60048"
    And I press "search"
    Then I should be on the display weather page for "60048"
    When I fill in "location" with "London"
    And I press "search"
    Then I should see the cities for "London"
    
  Scenario: Empty search criteria
    Given I am on the homepage
    When I fill in "location" with ""
    And I press "search"
    Then I should be on the homepage
    And I should see an error message
  
  Scenario: Clearing error message when returning to homepage
    Given I am on the homepage
    When I fill in "location" with "London"
    And I press "search"
    Then I should see the cities for "London"
    When I follow "header"
    Then I should not see an error message