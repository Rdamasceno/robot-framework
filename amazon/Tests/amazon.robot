*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           Selenium2Library

*** Variables ***

*** Test Cases ***
CS.SH.200.10.30 Create a Shipment Quote/ BOL for Parcel Documents
    [Documentation]    This is some basic information about the test

#case NxDepartment.Transportation:
#return "SHP_HOME";
#case NxDepartment.Accounting:
#return "ACT_HOME";
#case NxDepartment.Management:
#return "TMS_HOME";
#case NxDepartment.Sales:
#return "SALES_HOME";
#case NxDepartment.Reports:
#return "RPT_HOME";


    [Tags]    Smoke

    Begin Web test
    Enter login information
    Enter rate Shop information
    End Web test

*** Keywords ***
Enter login information
     input text  ctl05_edUserName  RPRIESTtryc
     input text  ctl05_edPassword  Broussard2
     wait until page contains element  id=ctl05_btLogin
     click element  id=ctl05_btLogin
Enter rate Shop information
    wait until page contains element  id=ucMenu_ucShipping_hlMenuItem
    click element  ucMenu_ucShipping_hlMenuItem
    input text  ctl05_ucRateShopWidget_ucQuickRateShop_edOriginZip   77040
    input text  id=ctl05_ucRateShopWidget_ucQuickRateShop_edDestinationZip   77020
    click element  id=ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_I
    click element  id=ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_DDD_L_LBI3T0
    click element  ctl05_ucRateShopWidget_ucQuickRateShop_edProductWeight1_I   50
    wait until page contains element  id= ctl05_ucRateShopWidget_ucQuickRateShop_btGetRates_CD
    click element  id= ctl05_ucRateShopWidget_ucQuickRateShop_btGetRates_CD

Begin Web test
    create webdriver    Firefox
    go to    https://test.newblims.com/
    SLEEP    3s
    
End Web test
    Close browser
