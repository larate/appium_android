Given("I land on Home screen") do
  puts "I lans on a home screen"
  find_element(id: "action_search")
end


When(/^I press on Menu icon$/) do
 puts "I press on menu incon"
  find_element(accessibility_id: "Open navigation drawer").click
end

Then("I should see left side menu") do

  text("Unit Converter")
end


When(/^I press on my Conversion button$/) do
  text("My conversions").click
end

Then(/^i should land on My conversion screen$/) do
  text("No personal conversion created yet")
end