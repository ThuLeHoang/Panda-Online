Feature: Watch life skill items
    As a student
    I want to read posts or play video about life skill
    In order to improve my life skills
       
        
    Scenario: Listen story "Sọ Dừa" in "Truyện ngắn"
        Given I am on "Kỹ năng sống" page
        When I click on "Sọ Dừa" button in "Truyện ngắn"
        Then I should play "Sọ dừa" audio
        
    Scenario: Play "Quà tặng cuộc sống" videos  
        Given I am on "Kỹ năng sống" page
        When I click on "Gánh xôi của bà" button
        Then I should see that video "Gánh xôi của bà" appear
        And I can click on video "Gánh xôi của bà" to play it
        When I click on "Gánh xôi của bà" button the second time
        Then I should see that video "Gánh xôi của bà" is hided
