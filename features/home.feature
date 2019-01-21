Feature: View the tech rador home page

@all and @smoke
Scenario: Confirm tech rador home page
  Given I browse to the tech rador home page
  Then A radar quadrant is displayed
  Then A subscribe button is displayed
