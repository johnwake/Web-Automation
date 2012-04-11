Feature: Login
	To Make sure that a site admin can login

Scenario: A site editor can successfully login
	Given that the editor is on the login page
	When their details are entered
	And the login button is clicked
	Then the user will see the dashboard