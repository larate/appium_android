Feature: As a user I want to convert Units and verify my conversion

  @acceptance
  Scenario: When i tap on menu item i should see left side window
    Given I land on Home screen
    When I press on Menu icon
    Then I should see left side menu
    When I press on my Conversion button
    Then i should land on My conversion screen


