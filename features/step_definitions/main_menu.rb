Given("I land on Home screen") do
  puts(get_source)
find_element(id: "action_search")
  
end


Then(/^I Press on Menu icon$/) do
find_element(accessibility_id: 'Open navigation drawer').click
end

Then("I should see left side menu") do
 text('Unit Converter')
end


When(/^I press on My conversions button$/) do
  text('My conversions').click
end

Then(/^I shouls land on My conversions screen$/) do
text('No personal conversion created yet')
end

Then(/^I tap on a right widget$/) do
  find_element(accessibility_id: "More options").click
end

When(/^I press on Add to Favorites icon$/) do
  text('Add to favorites').click
end


Then(/^I press on Favorit conversions$/) do
  text('Favorite conversions').click
end

And(/^I  verify "([^"]*)" added to Favorie conversions list$/) do |type|
  text(type)
end


