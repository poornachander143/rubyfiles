require 'rubygems'
require 'selenium-webdriver'
@browser = Selenium::WebDriver.for :chrome
@url = "https://www.dr.dk"
@browser.navigate.to(@url)
@browser.manage.window.maximize;

sleep 4
@browser.find_element(:name,"submitAll").click;

#sleep 5

#@browser.find_element(:xpath,"/html/body/div[2]/div/div[2]/div[1]/div/div[1]/div[2]/div[2]/div/div[2]").click;