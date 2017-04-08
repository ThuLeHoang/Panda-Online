Feature: Do excercises
    As a student
    I want to do excercise
    In order to review lessons that i have learnt recently


    Scenario: Enter "Luyện tậpp"
        Given I am logged in as Anna
	When I click on "Luyện tập" 
	Then I should see a list that include 5 chapters
	When I click in chapter 1	
	Then I should see 6 lesson excercise
	When I click in "Đếm đến 5" lesson excercise
	Then I should see my question to fill
   
