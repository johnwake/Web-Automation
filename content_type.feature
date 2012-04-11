@current @content_types
Feature: CMS-1046 News content type
  Scenario: check if news content type exists
    Given the Drupal 7 instance 
    When I navigate to add new content page 
    Then the News content type should be available 

  Scenario: News content type fields
    Given the News content type 
    When the form to create a new news item page is displayed 
    Then the news content type fields should be available 
    # long title, short title, summary, long summary, inherit from summary field,
    # body text, thumbnail image, thumbnail alt text, thumbnail title text, free tags

  Scenario: News content type creation form Mandatory Fields
    Given the News content type
    When the content creation form is displayed
    Then the following "fields" should be Mandatory

  Scenario: News content type creation form Mandatory Fields
    Given the News content type
    When the content creation form is displayed
    Then the following "fields" should be Mandatory

  Scenario: News Content - Create New
    Given the News content form is displayed
    And all fields have been populated
    # Save & publish button will be available in Sprint 11. Use
    # 'Save' button until then.
    # When I click save & publish
    When I click save
    Then the News Content Page is Published
    And all fields display as per population

  Scenario: News Content - Edit
    Given a existing New content type that is published
    When I edit all fields
    And I click save
    Then all changes are reflected on the published page correctly

  Scenario: News Content - Save Draft
    Given the News content form is displayed
    And all fields have been populated
    When I click save as draft
    Then the content is saved
    And the content can be previewed
    And the content is not visible on the published site

  Scenario: News Content Form - Inherit from Summary Field
    Given the News content form is displayed
    And the Summary field is populated
    When the Inherit from summary field check box is selected
    Then the Long Summary field is populated as per the Summary field

  Scenario: News Content Form - Not Inherit from Summary Field
    Given the News content form is displayed
    And the Summary field is populated
    When the Inherit from summary field check box is not selected
    Then the Long Summary field is not populated

  Scenario: News Content Form - Inherit from Summary Field & Modify
   Given the News content form is displayed
   And the Summary field is populated
    When the Inherit from summary field check box is selected
    And the Long Summary field is populated as per the Summary field
    Then the user can add to / modify the content

  Scenario: News Content Form - Soft Character Limits (Equals)
    Given the News content form is displayed
    When a value with the max softchar length is entered in to the fields
    Then the traffic light displays as Red

  Scenario: News Content Form - Soft Character Limits (Less Than)
    Given the News content form is displayed
    When a value with less than max softchar length is entered in to the fields
    Then the traffic light displays as Green

  Scenario: News Content Form - Soft Character Limits (More Than)
    Given the News content form is displayed
    When a value longer than the max softchar length is entered in to the fields
    Then the traffic light displays as Red

  # manual test for the moment
  #Scenario: News Content Form - Add Image
  #  Given the News content form is displayed
  #  When a user selects to Add Image
  #  And the asset manager is displayed
  #  Then the user is able to select an image

  # manual test for the moment
  #Scenario: News Content Form - Image Metadata
  #  Given the Asset Manager dialog is displayed
  #  When an Image has been selected
  #  Then the Alt Text field is populated as per the selected image
  #  And the Title Text field is populated as per the selected image

  # manual test for the moment
  #Scenario: News Content Form - Image Metadata Override
  #  Given an image has been selected
  #  When the ALT Text is populated as per the selected image
  #  And the Title Text field is populated as per the selected image
  #  Then the user is able to override the Alt Text 
  #  And the user is able to override the Title Text