Feature:
@conversions
Scenario: User able to create new conversion
  Given I land on Home screen
  Then  I press on Menu icon
  Then I press on my Conversion button
  Then I press on Create your fitst conversion
  And I type "Dollars" as custom name
  When I press on New Unit button
  Then I type "Dollar power" as unit name
  Then I type "DP" as unit symbol
  Then I type "100" as unit value
  Then I press submit checkmark on Custom conversions screen
  When I press on New Unit butto
  Then I type "Rubal  power" as unit name
  Then I type "RP" as unit symbol
  Then I type "600" as unit value
  Then I press submit checkmark on Custom conversions screen
  When I Press on OK button on Custom conversions screen
  And I verivy "Dollars" added to custom conversions list
