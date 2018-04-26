require "appium_lib"

def caps
  { caps: {
      deviceName: "Anyname",
      platformName: "Android",
      app: (File.join(File.dirname(__FILE__), "PreciseUnitConversion.apk")),
      appPackage: "com.ba.universalconverter",
      appActivity: "MainConverterActivity",
      newCommandTimeout: "3600"
  }}
end
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

def find_in_list (value)
  3.times {Appium::TouchAction.new.swipe(start_x: 0.5,  start_y: 0.2, stop_x: 0.5, stop_y: 0.8, duration:600).perform}
  until exists{find_element(name: "#{value}")} do
    Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.6, stop_x: 0.5,  stop_y: 0.2, duration:600).perform
  end
  text(value).click

end