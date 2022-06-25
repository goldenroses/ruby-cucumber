require 'rubygems'
require "watir"

Before do |scenario|
=begin
  # uncomment this block to execute a cloud grid test run on lambda test
  username= "#{LAMBDATEST_USERNAME}"
  accessToken= "#{LAMBDATEST_ACCESS_KEY}"
  gridUrl = "hub.lambdatest.com/wd/hub"

  capabilities = Selenium::WebDriver::Remote::Capabilities.new

  capabilities['platform'] = 'Windows 11'
  capabilities['name'] = 'Cucumber Login Tests'
  capabilities['build'] = 'Cucumber Test v.1'
  capabilities['browserName'] = 'Firefox'
  capabilities['browserVersion'] = '100.0'

  $browser = Watir::Browser.new(
    :remote,
    :url => "https://"+username+":"+accessToken+"@"+gridUrl, :desired_capabilities=>capabilities)
=end
  $browser = Watir::Browser.new :firefox
  $browser.driver.manage.window.maximize
end

After do |scenario|
  $browser.close
end
