*** Settings ***
Library  Selenium2Library

*** Keywords ***

Begin Web test
    create webdriver   Chrome
    go to  about:blank
    Maximize Browser Window

End Web test
    close browser
