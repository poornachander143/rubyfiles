require 'rubygems'
require 'selenium-webdriver'
@browser = Selenium::WebDriver.for :firefox
# @url = "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
@browser.get("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")

@browser.manage.window.maximize

sleep 3

@browser.find_element(xpath:"//input[@name='username']").send_keys("Admin") #username

sleep 5

@browser.find_element(xpath:"//input[@type='password']").send_keys("admin123") #password

sleep 4

@browser.find_element(xpath: "//button[@class='oxd-button oxd-button--medium oxd-button--main orangehrm-login-button']").click  #login button

sleep 4

@browser.execute_script("window.scrollTo(0, document.body.scrollHeight)") # scrolldown
sleep 4
@browser.execute_script("window.scrollTo(document.body.scrollHeight,0)") # scrollup
sleep 4
@browser.find_element(:xpath => "//span[contains(.,'GIP')]").click #PIM

sleep 4 
@browser.find_element(xpath: "(//input[@placeholder='Type for hints...'])[1]").send_keys("Amelia")

@browser.find_element(xpath: "(//input[@class='oxd-input oxd-input--active'])[2]").send_keys('01715')

@browser.find_element(xpath: "(//div[@class='oxd-select-text-input'])[1]").click

@browser.find_element(:xpath => "//button[@type='submit']").click

sleep 4
@browser.close






