Feature: Submit
    As a child who do excercises
    I want to submit after every question
    In order to know result as soon as I have done
    
    Background:
	Given I am entered in a excercise
	And I see 1 mushroom and demand "Đếm số hình xuất hiện và điền vào ô bến dưới"
	And I see a blank box to fill my answer

    Scenario: True answer
	When I fill the blank box with "1"
	And I click on "Nộp bài" button
	Then I should see notification "Chính xác!"
	And I can do next question

    Scenario: False answer
	When I fill the blank box with "2"
	And I click on "Nộp bài" button
	Then I should see notification "Rất tiếc. Bạn làm sai rồi Làm lại nhé!"
	And I must redo this question
