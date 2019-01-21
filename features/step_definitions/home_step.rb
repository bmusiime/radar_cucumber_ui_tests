require_relative 'pages/page_actions'

Given("I browse to the tech rador home page") do
  $webdriver.navigate.to $baseurl
end

Then("A radar quadrant is displayed") do
  expect(radar_quadrant)
end

Then("A subscribe button is displayed") do
  expect(subscribe_button.text).to be == "THEMES FOR THIS EDITION"
end
