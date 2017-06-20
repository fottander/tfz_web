Given(/^I am on the news page$/) do
  visit news_index_path
end

Given(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

Given(/^the following restaurants exist$/) do |table|
  table.hashes.each do |hash|
   create(:news, title: hash[:title], content: hash[:content])
  end
end

Then(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end
