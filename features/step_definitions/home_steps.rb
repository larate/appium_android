Then(/^I type "([^"]*)" in search field$/) do |arg|

  find_element(id: "search_src_text").send_keys(arg)
end

Then(/^I press on search icon$/) do
  find_element(id: "action_search").click

end

And(/^I press return button on soft keyboard$/) do
  Appium::TouchAction.new.tap(x:0.99 , y:0.99, count: 1).perform

end

Then(/^I see "([^"]*)" as a current  unit converter$/) do |arg|
  find_element(name: "#{arg}")
end

Then(/^Left Unit Picker value should be "([^"]*)"$/) do |left_unit|
  element = find_element(name: "#{left_unit}").text
  if element != left_unit
    fail("Exepted left unit piker value is #{left_unit}, actual result #{element}")
  end
end

And(/^Right Unit Picker value should be "([^"]*)"$/) do |right_unit|
  element = find_element(name: "#{right_unit_unit}").text
  if element != right_unit
    fail("Exepted left unit piker value is #{right_unit}, actual result #{element}")
  end
end

Then(/^I press on add to Favorits icon$/) do
  find_element(id: "action_add_favorites").click
end

Then(/^I press on Favorit conversion$/) do
  find_element(name: "Favorite conversions").click
end

And(/^I veryfy  "([^"]*)" added to Favorit conversions list$/) do |arg|
  find_element(name: "#{arg}")

end

Then(/^Show all button should be (disabled|enabled)$/) do |state|
  button_state = find_element(id: "btn_show_all").enabled?
  if state == "enabled"

    puts fail("enabled")if button_state != true

  elsif state == "disabled"

    puts fail("disabled") if button_state !=false
      end


end


Then(/^I should see result "([^"]*)"$/) do |result|
  value =  find_element(id: "target_value").text
  if value != result
    fail("expected value is #{result}, actual value is #{value}")
  end
end


When(/^I type "([^"]*)" on application  keybord$/) do |test|
  digits = test.split("")
  digits.each do |num|
    find_element(xpath: "//android.widget.Button[@text ='#{num}']").click
  end
end


Then(/^I select "([^"]*)" from menu$/) do |value|
  text(value).click
end

Then(/^I select "([^"]*)" from right unit piker$/) do |value|

  find_element(id: "select_unit_spinner").click
  find_in_list(value)


end


Then(/^I select droup down menu$/) do
  Appium::TouchAction.new.tap(x:1014 , y:345, count: 1).perform

end

Then(/^I select "([^"]*)" from left unit piker$/) do |value|
  find_element(id: "select_unit_spinner_arrow").click
  find_in_list(value)

end



