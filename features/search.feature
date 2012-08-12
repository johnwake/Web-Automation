Feature: Search for Automation in Google
  So that i can demo how cucumber works
  As a Tester
  I want to search for a term in Google
  
  Scenario: Search Google
    Given I am on the google home page
    When I search Google for "Automation"
    Then there should be a result for "en.wikipedia.org/"