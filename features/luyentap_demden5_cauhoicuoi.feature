Feature: Submit last question
    As a child who do exercises
    I want move next lesson exercise or stop doing exercise after last question
    In order to continue my work
    
    Background:
	Given I am in last question of "Đếm đến 5" exercise 
	And I see 3 fishes
	And i see a question and a blank box to fill my answer

    Scenario: True answer
	When I fill the blank box with "3"
	And I click on "Kiểm tra" button
	Then I should see add a star in a frame
	And I see notification "Chúc mừng bạn đã hoàn thành xuất sắc bài học 1."
	And I see notification "Chuyển đến bài học mới nào."
	And I see a link to lesson "Bài 2 - chương 1: Các phép toán trong phạm vi 10."
	When I click on this link
	Then I can do "Bài 2- Chương 1: Các phép toán trong phạm vi 10" exercise

    Scenario:
	When I fill the blank box with "2"
	And I click on "Nộp bài" button
	Then I should see amount of star in a frame is const
	And I see notification "Chúc mừng bạn đã hoàn thành bài học 1."
	And I see notification "Chuyển đến bài học mới nào."
	And I see a link to lesson "Bài 2 - chương 1: Các phép toán trong phạm vi 10."
	When I click on this link
	Then I can do "Bài 2- Chương 1: Các phép toán trong phạm vi 10" exercise
