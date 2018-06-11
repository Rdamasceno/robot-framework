*** Settings ***
Library  SeleniumLibrary
*** Variables ***
@{login}=  RPRIESTHWC1  Broussard2  RPRIESTtryc  RPRIESTacem  RPRIESTWPII  RPRIESTTSUC

*** Keywords ***
Click Find in Address Book
    click element  id=ctl05_ucShipmentEntryControl_rpAddress_pnlAddress_btAddrLookupDST_B
Set the State - TX
    select frame    xpath=//*[@id="pcMain_CIF-1"]
	sleep  1s
	wait until page contains element  id=ctl05_ucSearch_ctl02_cbState_B-1  timeout=10
    click element  id =ctl05_ucSearch_ctl02_cbState_B-1
    sleep  1s
    Wait Until Page Contains Element    id=ctl05_ucSearch_ctl02_cbState_DDD_L_LBI58T0  timeout=10
    click element  id=ctl05_ucSearch_ctl02_cbState_DDD_L_LBI58T0

Set the State - NY
    select frame    xpath=//*[@id="pcMain_CIF-1"]
    SLEEP  1s
    wait until page contains element  id=ctl05_ucSearch_ctl02_cbState_B-1  timeout=10
    click element  id =ctl05_ucSearch_ctl02_cbState_B-1
    sleep  5s
    Wait Until Page Contains Element    id=ctl05_ucSearch_ctl02_cbState_DDD_L_LBI44T0
    click element  id=ctl05_ucSearch_ctl02_cbState_DDD_L_LBI44T0
Address Search Button
    CLICK ELEMENT  id=ctl05_ucSearch_btSearch_CD


Address Book Button on Shipment Tab Screen
    Sleep  10s
     Wait Until Page Contains Element     id = ctl05_ucRateShopWidget_ucQuickRateShop_btShowAddressBook
     Click Link     id = ctl05_ucRateShopWidget_ucQuickRateShop_btShowAddressBook
Click on the Ship To section
    click element  id=ctl05_ucShipmentEntryControl_rpAddress_HTC_hlAddress