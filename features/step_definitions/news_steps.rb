Given(/^I am on the news page$/) do
  visit news_index_path
end

Given(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end
