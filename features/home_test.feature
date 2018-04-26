@home
Feature:

  Background:
    Given  I land on Home screen

@home_screen
  Scenario: User able to search by existing Conversion type
    Then  I press on search icon
    Then  I type "Cooking" in search field
    And I press return button on soft keyboard
    Then I see "Cooking" as a current  unit converter
    Then Left Unit Picker value should be "Gram"
    And Right Unit Picker value should be "Milligram"


  Scenario: User able to add current conversion to Favorites list
    Then I press on add to Favorits icon
    Then  I press on Menu icon
    Then I press on Favorit conversion
    And I veryfy  "Length" added to Favorit conversions list


    Scenario: SHow all button should be disable at launch
      Then Show all button should be disabled
      When I type "1" on application  keybord
    Then Show all button should be enabled


  Scenario Outline: Verify default conversion
    When I type "<test>" on application  keybord
    Then I should see result "<result>"
    Examples:
      |  test  | result |
#      |  1   | 30.48  |
#      |  2   | 60.96  |
#      |  3   | 91.44  |
#      |  4   | 121.92 |
#      |  10  |  304.8 |
      |  100  |  3 048 |


    Scenario: User is able to convert values
      Then I press on Menu icon
      Then I select "Volume" from menu
      Then I select "Pint" from right unit piker
      When I type "1" on application  keybord
      Then I should see result "0.5683"


  Scenario Outline: User able to select value from unit pickers
    Then I select "<value>" from left unit piker
    When I type "<test>" on application  keybord
    Then I should see result "<result>"
    Examples:
      | value | test   | result |
      | Inch | 1       | 2.54 |
      | Yard | 1       | 91.44 |
