Feature: PLC-60 PLC Basic search
In order to search the PLC Site
As a user
I want a working search bar

Scenario Outline: WEB-60 As a user i want to search the ITV PLC site
Given the search bar is present within the PLC Header
When i search for the following <Content Type>
Then the following <Assertion> is returned

Examples:
| Content Type					| Assertion												|
| Events (Future)				| Links to the financial events page					|
| Events (Past)					| Links to the reports and results page					|
| Profile (Board of directors)	| Links to the Board of directors page					|
| Profile (Management)			| Links to the Management team page						|
| Homepage carousel				| Carousel content does not appear in search			|
| Basic Page					| All available page content is displayed				|
| Press release					| All available Press release content is displayed		|
| Promo							| Promo content does not appear in search				|
| Regulatory news				| All available Regulatory news content is displayed	|
| Showreel						| All available Showreel content is displayed			|

@hayley
Scenario Outline: PLC-60 Search using wildcards and special characters
Given the search bar is present within the PLC Header
When i search for the certain <Characters>
Then the following <Assertion> is returned

Examples:
| Characters				| Assertion					| Description			|
| *							| *							| Wildcard				|
| 1234						| 1234						| numeric				|
| tran						| tran						| parcial				|
| trans*					| trans*					| parcial and wildcard 	|

Scenario: PLC-60 As a user i want to see pagination when more than 15 results are returned
Given the ITVPLC header with a search box
When i a search for a term with more than 15 results
Then i am returned a paginated list of results in pages of 15 results 

Scenario: PLC-60 As a editor i want to check that 404 pages are not displayed in search
Given the ITVPLC header with a search box
When i search for a 404 page
Then the 404 page should not be present within the returned search results

Scenario: PLC-60 Search works on the Search page
Given the ITVPLC Search page with a search box
When i search for a term on the search page
Then my search returns results based on my searched term

Scenario: As a user i want to see the Search text present in the search box when not selected
Given the ITVPLC header with a search box
Then i should see the search text present within the search box

Scenario: PLC-60 As an editor i want to Search for Edited Content
Given a piece of modified content
When i Search for Edited content
Then my results will display the edited content