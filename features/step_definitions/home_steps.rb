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