@wip
Feature: User able to create and manage custom conversions
  Scenario: User able to create a new conversion
    Given I land on home screen
    Then I press on menu icon
    Then I press on my conversions button
    Then I press on create your conversion button
    And I type "power" as custom conversion name
    When I press on New Unit button
    Then I type "Horse power" as unit name
    Then I type "1" as unit value
    Then I press submit checkmark on Custom conversions screen
    When I press on New Unit button
    Then I type "Mule power" as unit name
    Then I type "0.5" as unit value
    Then I press submit checkmark on Custom conversions screen
    Then I verify "power" added to Custom conversion list