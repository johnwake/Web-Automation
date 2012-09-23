Feature: Viewer signs up for the newsletter
  In order to recieve the newsetter
  As a user of the website
  I want to be able to sign up for the newsletter

  Scenario: View form page
    Given I am on "/form"
    Then I should see "Fill out this form to receive our newsletter."

  Scenario: Fill out form
    Given I am on "/form"
    When I fill in "name" with "Joe Bloggs"
    And I fill in "email" with "joe@bloggs.com"
    And I click "Sign Up!"
    Then I should see "Hi there, Joe Bloggs. You'll now receive our email at joe@bloggs.com"
