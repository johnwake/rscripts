Given /^I want to go to a website$/ do
  browser = Watir::Browser.new
  browser.goto "#{EnvConfig['google']}" 
end

Then /^the correct config is selected$/ do
  sleep 10
end
