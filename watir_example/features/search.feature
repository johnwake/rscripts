Feature: Basic search Scenario

  Scenario: Searching on google using the PageObjectModel
    Given I am on the Homepage
    When I perform a search for watir
    Then the correct search results are displayed
