Given(/^I am on the news page$/) do
  visit news_index_path
end

Given(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

Given(/^the following news exist$/) do |table|
  table.hashes.each do |attr|
   create(:news,
          attr.except('file')
            .merge(file: File.new("spec/images/#{attr[:file]}")))
  end
end

Then(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end

Then(/^I should see "([^"]*)" file named "([^"]*)"$/) do |news_title, file_name|
  news = News.find_by(title: news_title)
  within '#news' do
    within "#news-#{news.id}" do
      expect(page).to have_content file_name
      expect(page).to have_css "img[src*='#{image.file.url}']"
    end
  end
end
