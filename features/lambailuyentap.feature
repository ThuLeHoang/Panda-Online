Feature: Submit
    As a child who do excercises
    I want to submit after every question
    In order to know result as soon as I have done
    
    Background:
	Given: I am entered in a excercise
	And I see a question and a blank box to fill my answer

    Scenario:
	When I fill the blank box with true answer
	And I submit
	Then I should see notification that I am true
	And I can do next question

    Scenario:
	When I fill the blank box with false answer
	And I submit
	Then I should see notification that I am false
	And I must redo this question

    Scenario:
	When I have not filled the blank box yet
	And I submit
	Then I should see notification that I must fill this box
	And I must fill the blank box to complete this question


Feature: Submit last question
    As a child who do excercises
    I want move next lesson excercise or stop doing excercise after last question
    In order to continue my work
    
    Background:
	Given: I am entered in a excercise
	And I see a question and a blank box to fill my answer

    Scenario:
	When I fill the blank box with true answer
	And I submit
	Then I can choose moving next lesson excercise or stop doing excercise

    Scenario:
	When I fill the blank box with false answer
	And I submit
	Then I should see notification that I am false
	And I must redo this question

    Scenario:
	When I have not filled the blank box yet
	And I submit
	Then I should see notification that I must fill this box
	And I must fill the blank box to complete this question
	   		
    
    
