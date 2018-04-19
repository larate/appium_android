Feature: User able to create new custom conversions

@conversions
  Scenario: User able to create new conversion
    Given I land on Home screen
    Then I Press on Menu icon
    Then I press on My conversions button
    Then I press on Create your first conversion
    And I type "Dollars" as custom name
    When I press on New Unit button
    Then I type "Dollars power" as unit name
    Then I type "DP" as unit symbol
    Then I type "100" as unit value
    Then I press submit checkmark on Custom conversions screen
    When I press on New Unit button
    Then I type "Rubal power" as unit name
    Then I type "RP" as unit symbol
    Then I type "600" as unit value
    Then I press submit checkmark on Custom conversions screen
    When I press on OK button on Custom conversions screen
    And I verify "Dollars" added to Custom conversions list
