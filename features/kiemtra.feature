Feature: Do the test
    As a student
    I want to do the test after every chapter
    In order to total and reinforce my knowledge
    
    Background:
        Given I clicked on "Chương 1" test
        And I see request "Tick vào ô trả lời đúng"
        And there are choices:
            |Answer | |True/False   |
            |3+5=8  | |True         |
            |4+5=13 | |False        |
            |4+3=6  | |False        |
            |9-2=6  | |False        |
            |8-7=2  | |False        |
     
    Scenario: I am true
        When I tick on "3+5=8"
        And I click on "Nộp bài" button
        Then I should see notification "Chúc mừng bạn hoàn thành bài kiểm tra! Số điểm của bạn là 1"
    Scenario: I am false
        When I tick on "4+5=13"
        And I click on "Nộp bài" button
        Then I should see notification "Chúc mừng bạn hoàn thành bài kiểm tra! Số điểm của bạn là 0"
