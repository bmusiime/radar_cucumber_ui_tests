Feature: View the tech radar home page

@all and @smoke
Scenario: Confirm tech radar home page
  Given I browse to home page
  Then A radar quadrant is displayed
  And A subscribe button is displayed
