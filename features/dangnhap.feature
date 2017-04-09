Feature: Login
    As a user
    I want to login into web app
    In order to use privileges of a user
    
    Bachground:
        Given I am on "some/page" of web app
        And I have not login yet
        And my user name is "Anna", my password is "12345678"
        
    Scenario: Login with true account
        When I click on "Đăng nhập"
        Then I should see "Tên người dùng" and "Mật khẩu" blank text boxes  
        When I fill "Tên người dùng" with "Anna"
        And I fill "Mật khẩu" with "12345678"
        And I click on "Đăng nhập" button
        Then I should see notification "Đăng nhập thành công!"
        
    Scenario: Login with false password
        When I click on "Đăng nhập"
        Then I should see "Tên người dùng" and "Mật khẩu" blank text boxes  
        When I fill "Tên người dùng" with "Anna"
        And I fill "Mật khẩu" with "1234"
        And I click on "Đăng nhập" button
        Then I should see notification "Sai mật khẩu! Vui lòng đăng nhập lại"
        And I have to re-login
    
    
    Scenario: Login with account that does not exist
        When I click on "Đăng nhập"
        Then I should see "Tên người dùng" and "Mật khẩu" blank text boxes  
        When I fill "Tên người dùng" with "Hary"
        And I fill "Mật khẩu" with "12345678"
        And I click on "Đăng nhập" button
        Then I should see notification "Tài khoản không tồn tại! Đăng nhập lại hoặc Đăng ký"
        And I see "Đăng nhập" and "Đăng ký" buttons to choose
  
