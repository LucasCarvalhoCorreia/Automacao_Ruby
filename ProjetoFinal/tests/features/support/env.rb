require 'capybara/cucumber'
require 'capybara'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

World(Helper)
World(PageObjects)


Capybara.configure do |config|
    #selenium  slenium_chrome  slenium_chrome_headless
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    CONFIG['user']
    config.default_max_wait_time = 10
end