Feature: Scheduled publication

Scenario: Login as an Admin
Given the user is logged in as an Admin


Scenario Outline: Schedule publish status Before publish time has passed
Given a New <Content Type> is scheduled to publish in the future
When the <Scheduling Date> & time has Not Passed
Then the My Dashboard status for the content displays <Status>
And the My Dashboard Scheduling Date displays <Scheduling Date>
And the Content Dashboard for the content displays <Status>
And the Content Dashboard Scheduling Date displays <scheduling date>
And the content <Is / Is Not > published on the site

Examples:
| Content Type		| Before / After	| Status 	| Scheduling Date					| Is / Is Not Published | 
| Content page		| Before			| Scheduled	| DD/MM/YYYY HH:MM:SS as entered	| Is Not 				|
| Episode			| Before			| Scheduled	| DD/MM/YYYY HH:MM:SS as entered	| Is Not 				|
| Exclusive content	| Before			| Scheduled	| DD/MM/YYYY HH:MM:SS as entered	| Is Not 				|
| Image gallery		| Before			| Scheduled	| DD/MM/YYYY HH:MM:SS as entered	| Is Not 				|
| News				| Before			| Scheduled	| DD/MM/YYYY HH:MM:SS as entered	| Is Not 				|
| Poll				| Before			| Scheduled	| DD/MM/YYYY HH:MM:SS as entered	| Is Not 				|
| Profile			| Before			| Scheduled	| DD/MM/YYYY HH:MM:SS as entered	| Is Not 				|
| Supplier			| Before			| Scheduled	| DD/MM/YYYY HH:MM:SS as entered	| Is Not 				|
| UGC Video			| Before			| Scheduled	| DD/MM/YYYY HH:MM:SS as entered	| Is Not 				|
| Webform			| Before			| Scheduled	| DD/MM/YYYY HH:MM:SS as entered	| Is Not 				|


Scenario Outline: Schedule publish status After publish time has passed
Given a New <Content Type> is scheduled to publish now
When the <Scheduling Date> & time has Passed
Then the My Dashboard status for the content displays <Status>
And the My Dashboard Scheduling Date displays <Scheduling Date>
And the Content Dashboard for the content displays <Status>
And the Content Dashboard Scheduling Date displays <scheduling date>
And the content <Is / Is Not > published on the site

Examples:
| Content Type		| Before / After	| Status 	| Scheduling Date					| Is / Is Not Published | 
| Content page		| After				| Published	| No scheduling date available		| Is 					|
| Episode			| After				| Published	| No scheduling date available		| Is 					|
| Exclusive content	| After				| Published	| No scheduling date available		| Is 					|
| Image gallery		| After				| Published	| No scheduling date available		| Is 					|
| News				| After				| Published	| No scheduling date available		| Is 					|
| Poll				| After				| Published	| No scheduling date available		| Is 					|
| Profile			| After				| Published	| No scheduling date available		| Is 					|
| Supplier			| After				| Published	| No scheduling date available		| Is 					|
| UGC Video			| After				| Published	| No scheduling date available		| Is 					|
| Webform			| After				| Published	| No scheduling date available		| Is 					|

