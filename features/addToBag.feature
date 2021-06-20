Feature: Validate add to Bag Functionality
  Scenario: Search Item and Add to Bag on Application
    Given User is on Main page
    When User enter search item "iPhone 11 Case"
    And User click on Dropdown icon
    Then User navigate to search result page
    Then User add to bag
    And User go to bag