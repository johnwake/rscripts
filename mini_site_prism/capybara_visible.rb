require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'site_prism'
require 'capybara/rspec'

Capybara.run_server = false
Capybara.current_driver = :selenium

class Home < SitePrism::Page
  set_url "http://localhost"

  element :rentals, '#my-rentals'
end

  class Visible
    include Capybara::DSL
    include Capybara::Node::Matchers
    include RSpec::Matchers
    def visible
      @home = Home.new
      @home.load
      p @home.rentals.visible?
    end
  end
  
Visible.new.visible