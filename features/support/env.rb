require 'selenium-webdriver'

Before do
  Selenium::WebDriver::Chrome.driver_path = "/usr/local/bin/chromedriver"
  @webdriver = Selenium::WebDriver.for :chrome
  @baseurl = "https://www.thoughtworks.com/radar"
  @wait = Selenium::WebDriver::Wait.new(:timeout => 5)
end

After do |scenario|
  if scenario.failed?
      @webdriver.save_screenshot "./#{Time.now.strftime("failshot__%d_%m_%Y__%H_%M_%S")}.png"
    end
    @webdriver.quit
end
