Feature: Submit
    As a child who do excercises
    I want to submit after every question
    In order to know result as soon as I have done
    
    Background:
	Given: I am entered in a excercise
	And I see 1 mushroom
	And I see a question and a blank box to fill my answer

    Scenario: True question
	When I fill the blank box with "1"
	And I submit
	Then I should see notification "Chính xác!"
	And I can do next question

    Scenario: False question
	When I fill the blank box with "2"
	And I submit
	Then I should see notification "Rất tiếc. Bạn làm sai rồi Làm lại nhé!"
	And I must redo this question
