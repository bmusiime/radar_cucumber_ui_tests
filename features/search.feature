Feature: Search the tech radar

@all and @smoke
Scenario: Search on tech radar page
  Given I browse to the tech rador home page
  When I click on the search button
  And The archive page is loaded
  And I search for "amazon"
  Then "amazon" related results are displayed
