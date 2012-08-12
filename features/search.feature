Feature: Demo
  Make sure Cucumber and Capybara are wired up properly
  
  Scenario: Search Google
    Given I am on the google home page
    When I search Google for "Automation"
    Then there should be a result for "en.wikipedia.org/"