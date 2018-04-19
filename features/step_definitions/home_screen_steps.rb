
Then("I press on search icon") do
  find_element(id: "action_search").click
end

Then(/^I type "([^"]*)" in search field$/) do |text|
  find_element(id: "search_src_text").send_keys(text)
end

Then("I press return button on soft keyboard") do
Appium::TouchAction.new.tap(x:0.99, y:0.99, count: 1).perform
        end



Then(/^I see "([^"]*)" as a current unit converter$/) do |current_unit|
  find_element(xpath: "//android.widget.TextView[@text = '#{current_unit}']")
end

Then(/^Left Unit Picker value should be "([^"]*)"$/) do |left_unit|
  element = find_element(name: "#{left_unit}").text
  #element= find_element(id: "select_unit_spinner")[0].text
  puts (element)
   if element != left_unit
   fail("Expected left unit piker value is #{left_unit}, actual value is #{element}")
   end
end

And(/^Right Unit Picker value should ve "([^"]*)"$/) do |right_unit|
  element = find_element(name: "#{right_unit}").text
  #element= find_element(id: "select_unit_spinner")[0].text
  puts (element)
  if element != right_unit
    fail("Expected left unit piker value is #{right_unit}, actual value is #{element}")
  end
end


When(/^I type "([^"]*)" on application keyboard$/) do |test|
  digits = test.split("")
  digits.each do |d|
    find_element(xpath: "//android.widget.Button[@text ='#{d}']").click
  end

  # find_element(xpath: "//android.widget.Button[@text ='#{test}']").click
end

Then(/^I should see result as "([^"]*)"$/) do |result|
  value = find_element(id: "target_value").text
  if value != result
    fail("expected value is #{result}, actual value is #{value}")
  end
end

Then(/^Show all button should be (enabled|disabled)$/) do |state|
  button_state = find_element(id: "btn_show_all").enabled?
  if state == "enabled"
    if button_state != true
      fail("Expected to be enabled")
    end
  elsif state == "disabled"
    if button_state != false
      fail(" Expected to be disabled")
    end
  end
end



Then(/^I select "([^"]*)"  from left unit piker$/) do |value|
   find_element(id: "select_unit_spinner").click
   3.times {Appium::TouchAction.new.swipe(start_x: 0.5,  start_y: 0.2, stop_x: 0.5, stop_y: 0.8, duration:600).perform}
   until exists{find_element(name: "#{value}")} do
     Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.6, stop_x: 0.5,  stop_y: 0.2, duration:600).perform
   end
  #text(value).click
  find_element(name: "#{value}").click
end