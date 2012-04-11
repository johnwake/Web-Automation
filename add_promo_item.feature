Feature: PLC-5 Promo content type
In order to build out the PLC Site
As a editor
I want a Promo content type


Scenario Outline: PLC-5 As a <Role> I can create a Promo content type
Given the PLC Site
When i am logged in with <Role> permissions
Then I <Assertion> create a Promo Item 

Examples:
|Role			| Assertion	|
|Editor			| can		|
|Site Builder	| can		|
|Administrator	| can		| 

Scenario: PLC-5 - Create Promo Item
Given a Promo content type
When I create a new Promo Item
And enter all fields with valid data
And publish 
Then the Promo Item is published correctly


Scenario: PLC-5 - Edit Promo Item
Given a published Promo content type
When I edit the Promo Item
And I modify all fields with valid data
And republish 
Then the Promo Item is published correctly

Scenario Outline: PLC-5 As a <Role> I can edit a Promo content type
Given an existing Promo Item
When i am logged in with <Role> permissions
Then I <Assertion> edit an existing Promo Item

Examples:
|Role			| Assertion	|
|Editor			| can		|
|Site Builder	| can		|
|Administrator	| can		| 


Scenario: PLC-5 - Promo Content type is present within the Add new content list
Given the Add new content list
Then The Promo content type is listed

