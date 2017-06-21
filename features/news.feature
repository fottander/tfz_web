Feature: News
  As a visitor
  In order to get updates about the subject
  I would like to be presented with interesting news

  Background:
    Given the following news exist
     | title                   | content                                           | file               |
     | Awesome travel insights | Let me tell you about my trip to British Columbia | Agile_workflow.png |

  Scenario: I see some news posts on the page
    Given I am on the news page
    Then I should see "News"

  Scenario: I see the specific news item content
    Given I am on the news page
    And I click "Awesome travel insights"
    Then I should see "Let me tell you about my trip to British Columbia"

  Scenario: I see the specific news article with an image next to it
    Given I am on the news page
    Then I should see "Awesome travel insights" file name "Agile_workflow.png"
