@gestures
Feature: User able to use gestures

  Scenario: User able to swipe to open left side menu
    Given I land on Home screen
    When I swipe from left to right
    Then I should see left side menu
    When when I swipe from right to left
    Then I see "Length" as a current unit converter

@test
  Scenario: User able to swipe to open Right side menu
    Given I land on Home screen
    When when I swipe from right to left
    Then I see "Calculator" as a current unit converter
    When I swipe from left to right
    Then I see "Length" as a current unit converter
