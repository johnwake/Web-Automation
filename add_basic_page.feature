Feature: PLC-7 Basic Page content type
In order to build out the PLC Site
As a editor
I want a new content type


Scenario Outline: PLC-7 As a <Role> I can create a Basic Page content type
Given the PLC Site
When i am logged in with <Role> permissions
Then I <Assertion> create a Basic Page 

Examples:
|Role			| Assertion	|
|Editor			| can		|
|Site Builder	| can		|
|Administrator	| can		| 

@wip
Scenario: PLC-7 - Create Basic Page
Given a Basic Page content type
When I create a new Basic Page
And enter all fields with valid data
And publish 
Then the Basic Page is published correctly

Scenario: PLC-7 - Edit Basic Page
Given a published Basic Page content type
When I edit the Basic Page
And I modify all fields with valid data
And republish 
Then the Basic Page is published correctly

Scenario Outline: PLC-7 As a <Role> I can edit a Basic Page content type
Given an existing Basic Page
When i am logged in with <Role> permissions
Then I <Assertion> edit an existing Basic Page

Examples:
|Role			| Assertion	|
|Editor			| can		|
|Site Builder	| can		|
|Administrator	| can		| 


Scenario: PLC-7 - Basic Page Content type is present within the Add new content list
Given the Add new content list
Then The Basic Page content type is listed

Scenario Outline: PLC-7 - Mandatory / Optional fields
Given the Basic page content type
When the <Field> is set to <Entered>
And I save the Basic Page
Then the <Assertion> is correct

Examples:
|Fields 		| Entered 	| Assertion							|
|Short Title	| Blank		| The <Field> is a mandatory field	|
|Long Title		| Blank		| The <Field> is a mandatory field	|
|Short Summary 	| Blank		| The <Field> is a mandatory field	|
|Long Summary 	| Blank		| The <Field> is a mandatory field	|
|Image			| Blank		| The <Field> is a mandatory field	|
|WYSIWYG		| Blank		| OK 								| 


Scenario: PLC-7 - Share Tools enabled by default
Givev the Basic page content type
And the Share Tools are enabled by default
When i view the published page 
Then the Share Tools are displayed


Scenario: PLC-7 - Share Tools disabled
Given the Basic page content type
When I disable the share tools
And view the published page 
Then the Share Tools are not displayed

