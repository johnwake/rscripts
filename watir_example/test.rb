#require 'watir'
require 'watir-webdriver'

browser = Watir::Browser.new

browser.goto 'http://www.google.co.uk'
browser.text_field(:id => 'gbqfq').set 'Testing Watir'
browser.close
