require 'capybara/cucumber'
require 'capybara'
require 'faker'
require 'selenium-webdriver'
require 'site_prism'
require 'ostruct'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

World(PageObjects)
World(Helper)

Capybara.register_driver :selenium do |app|
    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
    elsif BROWSER.eql?('chrome_headless')
        Capybara::Selenium::Driver.new(app, :browser => :chrome, 
        capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
            'chromeOptions' => {'args' =>['--headless', '--disabled-gpu']}
        ))
    # elsif BROWSER.eql?('firefox')
    #     Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)
    # elsif BROWSER.eql?('firefox_headless')
    #     browser_options = Selenium::Webdriver::Firefox::Options.new(args: ['--headless'])
    #     Capybara::Selenium::Driver.new(app, :browser => :firefox, options: browser_options)
    # elsif BROWSER.eql?('ie')
    #     Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
    # elsif BROWSER.eql?('safari')
    #     Capybara::Selenium::Driver.new(app, :browser => :safari)
    end
end

Capybara.configure do |config|
    #selenium  slenium_chrome  slenium_chrome_headless
    config.default_driver = :selenium
    config.app_host = CONFIG['url_padrao']
    CONFIG['user']
    config.default_max_wait_time = 5
end