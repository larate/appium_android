Feature:
  @home_screen
  Scenario: User able to add current conversion to Favorites list
    Given I land on Home screen
  Then I tap on a right widget
    When I press on Add to Favorites icon
    Then I Press on Menu icon
    Then I press on Favorit conversions
    And I  verify "Length" added to Favorie conversions list

  Scenario: Show All button should be enabled at launch
    Given I land on Home screen
    Then Show all button should be disabled
    When I type "1" on application keyboard
    Then  Show all button should be enabled



  Scenario Outline: Verify  default conversion
    Given I land on Home screen
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
      Given I land on Home screen
      Then I press on search icon
      Then I type "Cooking" in search field
      And I press return button on soft keyboard
      Then I see "Cooking" as a current unit converter
      Then Left Unit Picker value should be "Gram"
      And Right Unit Picker value should ve "Milligram"

  @wip
Scenario: User able to select values frome unit pickers
Given I land on Home screen
Then I select "Yard"  from left unit piker
When I type "1" on application keyboard
Then I should see result as "91.44"
#Examples:
#|value| amount| result   |
#|Inch |  1    | 2.54     |
#|Link |  1    | 20.1168  |




