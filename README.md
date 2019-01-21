# Get started
This tests are degigned to test TW tech radar(https://www.thoughtworks.com/radar/) as such, there is need to confirm if you can access this page before running tests.

## Install requirements
```
brew install ruby
gem install bundler
bundle install
gem install cucumber
sudo gem install selenium-webdriver
```

### chromedriver
install chromedriver using
```
brew cask install chromedriver
```

### selenium
Download selenium jar file using:
```
curl -L0 https://selenium-release.storage.googleapis.com/3.9/selenium-server-standalone-3.9.1.jar -o selenium-server-standalone.jar
```

## Run UI tests:
run smoke tests
```
cucumber --tags "@smoke" -f pretty -f html -o result/report.html   
```
run all tests
```
cucumber -f pretty -f html -o result/report.html   
```

check the report in ```result/report.html```
