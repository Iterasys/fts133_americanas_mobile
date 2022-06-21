*** Settings ***
Library           AppiumLibrary

Test Teardown     Quit Application

*** Variables ***

# Config Local
#${REMOTE_URL}                       http://127.0.0.1:4723/wd/hub
#${platformName}                     Android
#${appium:platformVersion}           10.0
#${browserName}
#${appium:appiumVersion}             1.22.0
#${appium:deviceName}                emulator5554
#${appium:deviceOrientation}         portrait
#${appium:appPackage}                com.saucelabs.mydemoapp.android
#${appium:appActivity}               com.saucelabs.mydemoapp.android.view.activities.SplashActivity
#${appium:ensureWebviewsHavePages}   True
#${appium:nativeWebScreenshot}       True
#${appium:newCommandTimeout}         3600
#${appium:connectHardwareKeyboard}   True

# Config Saucelabs
${REMOTE_URL}           https://InstrutorIterasys10:9cfb183e-f614-46c9-bb21-a369b6c46bd0@ondemand.us-west-1.saucelabs.com:443/wd/hub
${platformName}                     Android
${appium:platformVersion}           9.0
${browserName}
${appium:appiumVersion}             1.22.0
${appium:deviceName}                Samsung Galaxy S9 FHD GoogleAPI Emulator
${appium:deviceOrientation}         portrait
${appium:appPackage}                com.saucelabs.mydemoapp.android
${appium:appActivity}               com.saucelabs.mydemoapp.android.view.activities.SplashActivity
${appium:app}                       storage:filename=mda-1.0.13-15.apk
${appium:ensureWebviewsHavePages}   true
${appium:nativeWebScreenshot}       true
${appium:newCommandTimeout}         3600
${appium:connectHardwareKeyboard}   true


*** Test Cases ***
Test case name
    Open Application    ${REMOTE_URL}   platformName=${platformName}  appium:platformVersion=${appium:platformVersion}  browserName=${browserName}  appium:appiumVersion=${appium:appiumVersion}  appium:deviceName=${appium:deviceName}  appium:deviceOrientation=${appium:deviceOrientation}  appium:app=${appium:app}    appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  appium:newCommandTimeout=${appium:newCommandTimeout}  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
    # xpath=//android.widget.ImageView[@content-desc="Sauce Lab Fleece T-Shirt"]
    Click Element    xpath=//android.widget.ImageView[@content-desc="Sauce Lab Fleece T-Shirt"]
    # id=com.saucelabs.mydemoapp.android:id/productTV
    ELEMENT SHOULD CONTAIN TEXT    id=com.saucelabs.mydemoapp.android:id/productTV      Sauce Lab Fleece T-Shirt
    # id=com.saucelabs.mydemoapp.android:id/priceTV
    ELEMENT SHOULD CONTAIN TEXT    id=com.saucelabs.mydemoapp.android:id/priceTV        $ 49.99
    # Swipe    545    1108    521    1228
    # Swipe    524    997    549    1853
    Swipe    659    1077    666    576
    # accessibility id=Tap to add product to cart
    Click Element    accessibility_id=Tap to add product to cart
    Click Element    accessibility_id=Tap to add product to cart
    # accessibility id=Tap to add product to cart
    Click Element    accessibility_id=Tap to add product to cart

