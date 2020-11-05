#require 'capybara/cucumber'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'site_prism'
require 'cpf_faker'
require 'rspec'
require 'faker'
require 'date'
require_relative 'page_helper.rb'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)

Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :selenium_chrome
  config.default_max_wait_time = 30
  config.app_host = 'http://sampleapp.tricentis.com'
end

