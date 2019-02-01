require_relative 'pages/page_actions'

When(/^I click on the search button$/) do
  element = @wait.until {search_links[0]}
  if expect(help_us_close_modal_button)
    help_us_close_modal_button.click()
  end
  element.click()
end

When(/^The archive page is loaded$/) do
  element = @wait.until {search_radar_input_field}
  expect(search_radar_input_field)
end

When(/^I search for "([^"]*)"$/) do |search_string|
    search_radar_input_field.send_keys(search_string)
    search_radar_submit.click()
end

Then(/^"([^"]*)" related results are displayed$/) do |search_string|
  has_search_results_title = @wait.until {search_results_title[0]}
  if expect(has_search_results_title)
    expect(has_search_results_title.text).to be == 'Matching results for "'+search_string+'"'
  end
end
