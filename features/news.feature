Feature: News
  As a visitor
  In order to get updates about the subject
  I would like to be presented with interesting news

  Scenario: I see some news posts on the page
    Given I am on the news page
    Then I should see "NEWS"

  Scenario: I see the specific news item content
    Given I am on the news page
    And I click "Awesome travel insights"
    Then I should see "Let me tell you about my trip to British Columbia"
