Feature: Do exercises
    As a student
    I want to do exercise
    In order to review lessons that i have learnt recently


    Scenario: Enter "Luyện tập"
        Given I am logged in as Anna
	When I click on "Luyện tập" 
	Then I should see a list that include 5 chapters
	When I click in chapter 1	
	Then I should see 6 lesson exercise
	When I click in "Đếm đến 5" lesson exercise
	Then I should see blank box to fill my answer
   
