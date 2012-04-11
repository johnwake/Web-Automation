Feature: Create an episode
	To populate all content blocks for each deployment.  

Scenario: Create an episode
	Given that the editor is logged in
	And they are within the content menu
	When they click Add Content
	And the add content block is displayed
	And the editor clicks the episodes button
	And populates episodes content
	Then click the save button
	
Scenario: View a saved episode
	Given that the editor has clicked the save button
	When they click Add Content
	And the add content block is displayed
	And the editor clicks the episodes button
	And populates episodes content
	Then click the save button