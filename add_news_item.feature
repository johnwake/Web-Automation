Feature: PLC-9 News content type
In order to build out the PLC Site
As a editor
I want a new content type


Scenario Outline: PLC-9 As a <Role> I can create a News Item content type
Given the PLC Site
When i am logged in with <Role> permissions
Then I <Assertion> create a news item

Examples:
|Role			| Assertion	|
|Editor			| can		|
|Site Builder	| can		|
|Administrator	| can		| 

Scenario: PLC-9 - Create News (includes video)
Given a News content type
When I create a new News item
And enter all fields with valid data
And publish 
Then the News is published correctly

Scenario: PLC-9 - Edit News
Given a published News content type
When I edit the News
And I modify all fields with valid data
And republish 
Then the News is published correctly

Scenario Outline: PLC-9 As a <Role> I can edit a News Item content type
Given an existing news item
When i am logged in with <Role> permissions
Then I <Assertion> edit an existing news item

Examples:
|Role			| Assertion	|
|Editor			| can		|
|Site Builder	| can		|
|Administrator	| can		| 


Scenario: PLC-9 - News Content type is present within the Add new content list
Given the Add new content list
Then The News content type is listed

Scenario Outline: PLC-7 - Mandatory / Optional fields
Given the News content type
When the <Field> is set to <Entered>
And I save the News item
Then the <Assertion> is correct

Examples:
|Fields 		| Entered 	| Assertion							|
|Short Title	| Blank		| The <Field> is a mandatory field	|
|Long Title		| Blank		| The <Field> is a mandatory field	|
|Short Summary 	| Blank		| The <Field> is a mandatory field	|
|Long Summary 	| Blank		| The <Field> is a mandatory field	|
|Image			| Blank		| The <Field> is a mandatory field	|
|WYSIWYG		| Blank		| OK 								| 
|Caption		| Blank		| OK								|
|Vodcrid		| Blank		| OK								|
|Poster Image	| Blank		| OK								|


