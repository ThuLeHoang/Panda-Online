Feature: Watch life skill items
    As a student
    I want to read posts or play video about life skill
    In order to improve my life skills
        
    Scenario: Read stories in "Truyện ngắn"
        When I click on "Sọ Dừa" button in "Truyện ngắn"
        Then I should see "Sọ dừa" story
        
    Scenario: Play "Quà tặng cuộc sống" videos
        When I click on video "Gánh xôi của bà"
        Then I should play that video
