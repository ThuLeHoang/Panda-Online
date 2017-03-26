Feature: Do excercises
    As a student
    I want to enter "Luyen tap"
    In order to do excercises and submit


    Scenario: Enter "Luyen tap"
        Given I am logged in as a user
	When I click in "Luyen tap" 
	Then I should see a chapters list
	When I click in a chapter (downdrop) button
	Then I should see a lesson excercise list
	When I click in a lesson excercise
	Then I should see my excercise to fill
    
