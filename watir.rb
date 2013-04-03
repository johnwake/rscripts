require 'watir'
require 'watir-webdriver'

b = Watir::Browser.new
b.goto 'http://www.google.com'
b.title == 'Google'
b.text_field(:name => 'q').set 'Watir'
b.text.include? 'Web Application Testing in Ruby'
b.close
