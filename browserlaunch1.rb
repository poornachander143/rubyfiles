require 'rubygems'
require 'selenium-webdriver'
@browser = Selenium::WebDriver.for :chrome
@url = "https://www.google.com"
@browser.navigate.to(@url)