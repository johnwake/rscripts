require 'cucumber'
require 'watir-webdriver'
require 'page-object'
require 'page-object/page_factory'

World(PageObject::PageFactory)

Before do
  @browser = Watir::Browser.new(:firefox, :profile => "default")
end

After do
  @browser.close
end
