@home
Feature: Test Home screen functionality

  Background:
    Given I land on Home screen

  @home_screen
  Scenario: User able to add current conversion to Favorites list
  Then I tap on a right widget
    When I press on Add to Favorites icon
    Then I Press on Menu icon
    Then I press on Favorit conversions
    And I  verify "Length" added to Favorie conversions list

  Scenario: Show All button should be enabled at launch
    Then Show all button should be disabled
    When I type "1" on application keyboard
    Then  Show all button should be enabled



  Scenario Outline: Verify  default conversion
    When I type "<test>" on application keyboard
    Then I should see result as "<result>"
    Examples:
      | test    | result |
#      | 1    | 30.48 |
#      | 2    | 60.96 |
#      | 3    | 91.44 |
#      | 4    | 121.92 |
      |10     |304.8   |
      |100    |3 048   |



  Scenario: User able to search by existing Conversion  type
      Then I press on search icon
      Then I type "Cooking" in search field
      And I press return button on soft keyboard
      Then I see "Cooking" as a current unit converter
      Then Left Unit Picker value should be "Gram"
      And Right Unit Picker value should be "Milligram"


Scenario Outline: User able to select values frome unit pickers
Then I select "<value>"  from left unit piker
When I type "<test>" on application keyboard
Then I should see result as "<result>"
Examples:
|value| test| result   |
|Inch |  1    | 2.54     |
|Link |  1    | 20.1168  |


  Scenario: User able to convert values
    Then I Press on Menu icon
    Then I select "Volume" from menu
    Then I select "Pint"  from right unit piker
    When I type "1" on application keyboard
    Then I should see result as "6.6614"

@wip
    Scenario: User able to switch values
      Then Left Unit Picker value should be "Foot"
      And Right Unit Picker value should be "Centimeter"
      When I press on switch units button
      Then Left Unit Picker value should be "Centimeter"
      And Right Unit Picker value should be "Foot"





