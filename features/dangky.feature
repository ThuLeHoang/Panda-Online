Feature: Sign up
    As a user
    I want to sign up a account 
    In order to use privileges of a user
    
    Bachground:
        Given I am on "some/page" of web app
        And I have not haved account yet
        
    Scenario: Sign up with new account
        When I click on "Đăng ký"
        Then I should see "Tên người dùng" and "Mật khẩu" blank text boxes  
        When I fill "Tên người dùng" with "Hary"
        And I fill "Mật khẩu" with "1234"
        And I click on "Đăng ký" button
        Then I should see notification "Đăng ký thành công!"
        
    Scenario: Sign up with new account that already exist
        When I click on "Đăng ký"
        Then I should see "Tên người dùng" and "Mật khẩu" blank text boxes  
        When I fill "Tên người dùng" with "Anna"
        And I fill "Mật khẩu" with "12345678"
        And I click on "Đăng ký" button
        Then I should see notification "Tên tài khoản này hiện đã tồn tại! Vui lòng nhập tên khác"
        And I have to re-register
    
