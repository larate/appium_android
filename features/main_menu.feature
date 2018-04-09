Feature: As a user I want to convert Units and verify my conversion
  Scenario: When I tap on menu item I should see left side window
    Given I land on Home screen
    When I press on Menu icon
    Then I should see left side menu
    When  I press on My conversions button
    Then  I shouls land on My conversions screen

  Scenario: I should be able to open my conversion screen
    Given I land on Home screen
    When  I press on Menu icon
    And  I press on My conversions button
    Then  I shouls land on My conversions screen
