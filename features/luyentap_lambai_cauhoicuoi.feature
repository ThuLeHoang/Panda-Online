Feature: Submit last question
    As a child who do exercises
    I want move next lesson exercise or stop doing exercise after last question
    In order to continue my work
    
    Background:
	Given I am in last question of "Đếm đến 5" exercise 
	And I see 1 mushroom
	And i see a question and a blank box to fill my answer

    Scenario: True answer
	When I fill the blank box with "1"
	And I click on "Nộp bài" button
	Then I should see notification "Chính xác!"
	And I see "Qua bài" button
	When I click on "Qua bài"
	Then I can do "Đếm đến 10" exercise

    Scenario:
	When I fill the blank box with "2"
	And I click on "Nộp bài" button
	Then I should see notification "Rất tiếc. Bạn làm sai rồi Làm lại nhé!"
	And I must redo this question

    
