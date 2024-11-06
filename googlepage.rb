require 'rubygems'
require 'selenium-webdriver'
@browser = Selenium::WebDriver.for :firefox
# @url = "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
@browser.navigate.to('http://www.google.com')

@browser.manage.window.maximize

sleep 3
@browser.find_element(:xpath, '/html/body/div[2]/div[2]/div[3]/span/div/div/div/div[3]/div[1]/button[1]/div').click

sleep 4

  @browser.find_element(:name, 'q').send_keys("selenium")

sleep 4

@browser.find_element(:xpath, '/html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[4]/div[2]/div[1]/div/ul/li[1]/div/div[2]/div[1]/div[1]/span').click

sleep 4

 # @browser.find_element(:name, 'btnG').click


  
