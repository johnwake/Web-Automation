Feature: Populating blocks
	To populate all content blocks for each deployment.  

Scenario: A site editor can successfully populatre blocks
	Given that the editor is logged in
	And they are within the configuration menu
	When they click airing info
	And the airing info block is displayed
	And all the fields are populated
	Then click the save button