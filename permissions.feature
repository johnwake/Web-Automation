Feature: Permissions
In order to search the PLC Site
As a user
I want a working search bar

Scenario: As a user i want to check that the permissions are correctly set
Given the user is logged in
When check the sites permissions
Then the permissions are correctly set