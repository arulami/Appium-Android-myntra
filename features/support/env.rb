require "appium_lib"
require 'selenium-webdriver'

def wait_for
  Selenium::WebDriver::Wait.new(:timeout => 20).until {yield}
end

def caps
{ caps: {
    deviceName: "Anyname",
    platformName: "Android",
    app: (File.join(File.dirname(__FILE__), "com.myntra.android_2021-05-31.apk")),
    appPackage: "com.myntra.android",
    appActivity: "com.myntra.android.SplashActivity",
    newCommandTimeout: "3600"
}}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
