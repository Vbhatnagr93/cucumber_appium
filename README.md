# cucumber_appium

To Run the project: 

Prerequisites: 
- Install Appium (https://github.com/appium/appium-desktop/releases/tag/v1.6.2)
- Install Rubymine IDE (https://www.jetbrains.com/ruby/)
- Install Genymotion and create a virtual device(https://www.genymotion.com/)
- Install Android sdk and set the adb path in your bash profile
- Install Cucumber gem (https://docs.cucumber.io/installation/ruby/)


1) Open the project in Ruby mine
2) Start Appium Server
3) Open virtual device
4) open Terminal and type `cucumber` (to run all features)
5) To run particular features run `cucumber -t @tag` (for features with tags) or `cucumber -p profile_name` (where profile_name is saved in cucumber.yml file)
