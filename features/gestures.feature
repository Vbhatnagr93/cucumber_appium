Feature: User able to use gestures
  Scenario: User able to swipe to open left side menu
    Given I land on home screen
    When I swipe from left to right
    Then I should see left side menu
    When I swipe from right to left
    Then I see "Length" as a current unit convertor

  Scenario: User able to swipe to open right side menu
    Given I land on home screen
    When I swipe from right to left
    Then I see "Calculator" as a current unit convertor
    When I swipe from left to right
    Then I see "Length" as a current unit convertor