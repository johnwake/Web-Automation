require_relative "../../myapp"
require "Capybara"
require 'capybara/dsl'
require 'selenium-webdriver'
require "Capybara/cucumber"
require "rspec"
require 'site_prism'

World do
  Capybara.app = MyApp
  include Capybara::DSL
  include RSpec::Matchers
end
