def go_to_page(url)
    @webdriver.navigate.to url
end

def search_button
  return @webdriver.find_element(:class => "radar-search-navigation__link a-z-link")
end

def subscribe_button
  return @webdriver.find_element(:class => "heading__section")
end

def click_subscribe_button
  return subscribe_button.click()
end

def radar_quadrant
  return @webdriver.find_element(:class => "radar-quadrant-navigation__quadrant")
end

def search_links
  return @webdriver.find_elements(:xpath => '//*[contains(@class, "a-z-link")]')
end

def search_link
  return @webdriver.find_element(:xpath => '//*[contains(@class, "a-z-link")]')
end

def help_us_close_modal_button
  return @webdriver.find_element(:xpath => '//*/button[contains(@class, "close_modal")]')
end

def search_radar_input_field
  return @webdriver.find_element(:xpath => '//*[contains(@class, "search-field")]')
end

def search_radar_submit
  return @webdriver.find_element(:xpath => '//*[contains(@class, "search-submit")]')
end

def search_results_title
  return @webdriver.find_elements(:xpath => '//*/h4')
end
