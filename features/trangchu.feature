Feature: Home
    As a user
    I want to visit homepage
    In order to overview web app
    
    Bachground:
        Given I am on homepage of web app
        And I logged in as Anna
        
    Scenario: Enter "Luyện tập"
        When I click on "Luyện tập" 
        Then I should see a list that include 6 chapters
        When I click in chapter 1	
        Then I should see 6 lesson exercise
        When I click in "Đếm đến 5" lesson exercise
        Then I should see blank box to fill my answer
        
    Scenario: Enter "Kiểm tra"
        When I click on  "Kiểm tra"
        Then I should see a list that include 6 chapters
        When I click in chapter 1	
        Then I should see 6 lesson test
        When I click in "Đếm đến 5" lesson test
        Then I should see question with may answer that I must choose true answer
        
    Scenario: Enter "Kỹ năng sống"
        When I click on "Kỹ năng sống"
        Then I should see "Truyên ngắn" and "Quà tặng cuộc sống" items
        
    Scenario: Enter "Phụ huynh"
        When I click on "Phụ huynh"
        Then I should see "Học cùng trẻ", "Sổ tay" and "Thực đơn tuần" items        
        
    Scenario: Enter "Đăng nhập"
        When I click on "Đăng nhập"
        Then I should see "Tên người dùng" and "Mật khẩu" blank text boxes      
        
    Scenario: Enter "Đăng ký"
        When I click on "Đăng ký"
        Then I should see "Tên người dùng" and "Mật khẩu" blank text boxes  
        
        
