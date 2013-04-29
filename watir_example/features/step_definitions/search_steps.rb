Given /^I am on the Homepage$/ do
  @browser = visit_page HomePage
end

When /^I perform a search for (\w+)/ do |term|
  @browser.search_box = term
  @browser.search_button
end

Then /^the correct search results are displayed$/ do
  @browser.text.include? 'Web Application Testing in Ruby'
end
