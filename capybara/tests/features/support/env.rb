require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
# require 'capybara/cucumber'
require 'selenium-webdriver'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
    #selenium  slenium_chrome  slenium_chrome_headless
    config.default_driver = :selenium_chrome
    config.app_host = 'http://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5
end