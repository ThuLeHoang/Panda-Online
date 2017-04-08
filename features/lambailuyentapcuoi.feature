Feature: Submit last question
    As a child who do excercises
    I want move next lesson excercise or stop doing excercise after last question
    In order to continue my work
    
    Background:
	Given: I am entered in a excercise
	And I see 1 mushroom
	And i see a question and a blank box to fill my answer

    Scenario: 
	When I fill the blank box with "1"
	And I submit
	Then I should see "Qua bài" button
	When I click on "Qua bài"
	Then I can do "Đếm đến 10" excercise

    Scenario:
	When I fill the blank box with "2"
	And I submit
	Then I should see notification "Rất tiếc. Bạn làm sai rồi Làm lại nhé!"
	And I must redo this question

    