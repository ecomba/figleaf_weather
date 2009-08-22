Feature: Weather report
  In order to know what I should wear today
  As a user
  I want to see the weather report

  Scenario: Report
    Given I am on the homepage
    When I fill in "location" with "London"
    And I press "search"
    Then I should see the cities for "London"
    When I follow "London, United Kingdom"
    Then I should see "low temperature"
    And I should see "high temperature"
    And I should see "wind speed"
