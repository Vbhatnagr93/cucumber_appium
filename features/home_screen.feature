@home_screen
Feature: Test for Home Screen functionality

  Background:
    Given I land on home screen

  @default
  Scenario: Default value on homescreen is foot and centimeter
    Then left unit picker value should be "Foot"
    And right unit picker value should be "Centimeter"

  Scenario: Show all button should be disabled at launch
    Then show all button should be "disabled"
    When I type "1" on application keyboard
    Then show all button should be "enabled"

   @conversions @wip
   Scenario Outline: Verify default conversion
     When I type "<target>" on application keyboard
     Then I should see result as "<result>"
   Examples:
     |target|result |
     |1     |30.48  |
     |2     |60.96  |
     |3     |91.44  |
     |4     |121.92 |

    Scenario: User able to add current conversion to favorites list
      Then I press on Add to Favorites icon
      When I press on menu icon
      Then I press on favorite conversions
      And I verify "Length" added to favorites conversion list

    Scenario: User able to search by existing conversion type
      Then I press on search icon
      Then I type "Temperature" in search field
      And I press return button on soft keyboard
      Then I see "Temperature" as current unit convertor
      Then left unit picker value should be "Celsius"
      And right unit picker value should be "Fahrenheit"

    Scenario Outline: User able to select values from unit pickers
      Then I select "<unit_type>" from left unit picker
      When I type "<amount>" on application keyboard
      Then I should see result as "<result>"

      Examples:
      |unit_type| amount | result  |
      | Inch    |    1   | 2.54    |
      | Link    |    1   | 20.1168 |

    Scenario: User is able to convert values
      When I press on menu icon
      Then I select "Volume" from menu
      Then I select "Cup" from right unit picker
      When I type "1" on application keyboard
      Then I should see result as "15.1416"

    Scenario: User able to switch values
      Then left unit picker value should be "Foot"
      And right unit picker value should be "Centimeter"
      When I press on switch units button
      Then left unit picker value should be "Centimeter"
      And right unit picker value should be "Foot"





