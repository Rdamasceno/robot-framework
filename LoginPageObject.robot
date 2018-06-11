*** Settings ***
Library  SeleniumLibrary
*** Variables ***
@{login}=  RPRIESTHWC1  Broussard2  RPRIESTtryc  RPRIESTacem  RPRIESTWPII  RPRIESTTSUC

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  id=ctl05_imgLogo
Enter USERNAME
    input text  id=ctl05_edUserName  @{login}[0]
Enter PASSWORD
    input text  ctl05_edPassword  @{login}[1]
Click on the Login button
    Wait Until Page Contains Element    id=ctl05_btLogin      timeout=10
    Click Element    id=ctl05_btLogin
