Feature:
@wip
  Scenario: User able to search by existing Conversion type
    Given  I land on Home screen
    Then  I press on search icon
    Then  I type "Cooking" in search field
    And I press return button on soft keyboard
    Then I see "Cooking" as a current  unit converter
    Then Left Unit Picker value should be "Gram"
    And Right Unit Picker value should be "Milligram"