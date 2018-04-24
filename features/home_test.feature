Feature:
@home_screen
  Scenario: User able to search by existing Conversion type
    Given  I land on Home screen
    Then  I press on search icon
    Then  I type "Cooking" in search field
    And I press return button on soft keyboard
    Then I see "Cooking" as a current  unit converter
    Then Left Unit Picker value should be "Gram"
    And Right Unit Picker value should be "Milligram"


  Scenario: User able to add current conversion to Favorites list
    Given I land on Home screen
    Then I press on add to Favorits icon
    Then  I press on Menu icon
    Then I press on Favorit conversion
    And I veryfy  "Length" added to Favorit conversions list


    Scenario: SHow all button should be disable at launch
      Given I land on Home screen
      Then Show all button should be disabled
      When I type "1" on application  keybord
    Then Show all button should be enabled


  Scenario Outline: Verify default conversion
    Given I land on Home screen
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

  @wip
    Scenario: User is able to convert values
      Given I land on Home screen
      Then I press on Menu icon
      Then I select "Volume" from menu
      Then I select "Pint" from right unit piker
      When I type "1" on application  keybord
      Then I should see result "0.5683"

