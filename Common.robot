*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Begin Web test

        Create Webdriver   Chrome

        Open Browser    https://test.newblims.com/   browser=chrome
        #go to  about:blank
        Maximize Browser Window

         #  ${chrome options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
         # Call Method    ${chrome options}   add_argument    headless
         #Call Method    ${chrome options}   add_argument    disable-gpu
         #${options}=     Call Method     ${chrome_options}    to_capabilities
         #Create Webdriver    Chrome   desired_capabilities=${options}
         #Go to     about:blank
         # Maximize Browser Window
         Capture Page Screenshot  filename=login{index}.png



End Web test
    close browser



