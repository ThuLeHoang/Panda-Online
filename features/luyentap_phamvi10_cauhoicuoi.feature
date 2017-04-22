Feature: Submit last question
    As a child who do exercises
    I want move next lesson exercise or stop doing exercise after last question
    In order to continue my work
    
    Background:
	Given I am in last question of "Các phép toán trong phạm vi 10" exercise 
	And I see a fomular "3 + 4 = " demand "Điền số thích hợp vào ô trống"
	And I see a blank box to fill my answer
	And I see a frame where I see a star was added if I have true answer

    Scenario: True answer
	When I fill the blank box with "7"
	And I click on "Kiểm tra" button
	Then I should see a star was added in a frame
	And I see notification "Chúc mừng bạn đã hoàn thành xuất sắc bài học 2."
	And I see notification "Chuyển đến bài học mới nào."
	And I see a link to lesson "Bài 3- chương 1: Tìm số lớn nhất bé nhất trong phạm vi 10."
	When I click on this link
	Then I can do "Bài 3- chương 1: Tìm số lớn nhất bé nhất trong phạm vi 10." exercise

    Scenario:
	When I fill the blank box with "2"
	And I click on "Nộp bài" button
	Then I should see amount of star in a frame is const
	And I see notification "Chúc mừng bạn đã hoàn thành bài học 2."
	And I see notification "Chuyển đến bài học mới nào."
	And I see a link to lesson "Bài 3- chương 1: Tìm số lớn nhất trong bé nhất phạm vi 10."
	When I click on this link
	Then I can do "Bài 3- chương 1: Tìm số lớn nhất bé nhất trong phạm vi 10." exercise
