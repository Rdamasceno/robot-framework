*** Settings ***
Library  SeleniumLibrary
Resource  C:/development/robot-scripts/test/Resources/LoginPageObject.robot
Resource  C:/development/robot-scripts/test/Resources/ShipmentPageObject.robot
Resource  C:/development/robot-scripts/test/Resources/CarrierPageObject.robot
Resource  C:/development/robot-scripts/test/Resources/AddressPageObject.robot

*** Variables ***
@{login}=  RPRIESTHWC1  Broussard2  RPRIESTtryc  RPRIESTacem  RPRIESTWPII  RPRIESTTSUC

*** Keywords ***
Enter login information HWC1
    Go to  https://QA.newblims.com/
   # https://test.newblims.com/
    Verify Page Loaded
    Enter USERNAME
    Enter PASSWORD
    SLEEP  3s
    Wait Until Page Contains Element    id=ctl05_btLogin
    Click Element    id=ctl05_btLogin
    SLEEP  3s
Enter login information
    Go to   https://QA.newblims.com/
    #https://test.newblims.com/
    Verify Page Loaded
    Enter USERNAME
    Enter PASSWORD
    Click on the Login button
    Go to Shipments Tab
Enter login information TRYC
    Go to  https://QA.newblims.com/
    # https://test.newblims.com/
    Verify Page Loaded
    input text  id=ctl05_edUserName  @{login}[2]
    Enter PASSWORD
    SLEEP  3s
    Click on the Login button
    SLEEP  3s
Enter login information ACEM
    Go to  https://QA.newblims.com/
    # https://test.newblims.com/
    Verify Page Loaded
    input text  id=ctl05_edUserName  @{login}[3]
    Enter PASSWORD
    SLEEP  3s
    Click on the Login button
    SLEEP  3s
Enter login information TSUC
    Go to  https://QA.newblims.com/
    # https://test.newblims.com/
    Verify Page Loaded
    input text  id=ctl05_edUserName  @{login}[5]
    Enter PASSWORD
    SLEEP  3s
    Click on the Login button
    SLEEP  3s
    Go to Shipments Tab

Enter login information WPII
    Go to  https://QA.newblims.com/
    # https://test.newblims.com/
    Verify Page Loaded
    input text  id=ctl05_edUserName  @{login}[4]
    Enter PASSWORD
    Click on the Login button
    Go to Shipments Tab
Enter rate shop information
    input text  id=ctl05_ucRateShopWidget_ucQuickRateShop_edOriginZip   77040
    input text  id=ctl05_ucRateShopWidget_ucQuickRateShop_edDestinationZip   77020
    click element  ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_B-1
    SLEEP  2s
    wait until element is visible  id=ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_DDD_L_LBI3T0
    click element  ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_DDD_L_LBI3T0
    SLEEP  5s
    input text  id=ctl05_ucRateShopWidget_ucQuickRateShop_edProductWeight1_I  5007
    Wait Until Page Contains Element    id=ctl05_ucRateShopWidget_ucQuickRateShop_btGetRates_B
    click element   id=ctl05_ucRateShopWidget_ucQuickRateShop_btGetRates_B
    Sleep  10s
    click element   id=ctl05_ucSearch_ctl02_pcClientSpecificRateShop_PWC-1
    Sleep  10s
Enter rate shop information less 5000
    input text  id=ctl05_ucRateShopWidget_ucQuickRateShop_edOriginZip   77040
    input text  id=ctl05_ucRateShopWidget_ucQuickRateShop_edDestinationZip   77020
    click element  ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_B-1
    SLEEP  2s
    wait until element is visible  id=ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_DDD_L_LBI3T0
    click element  ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_DDD_L_LBI3T0
    SLEEP  5s
    input text  id=ctl05_ucRateShopWidget_ucQuickRateShop_edProductWeight1_I  500
    Wait Until Page Contains Element    id=ctl05_ucRateShopWidget_ucQuickRateShop_btGetRates_B
    click element   id=ctl05_ucRateShopWidget_ucQuickRateShop_btGetRates_B
    Sleep  10s
    click image   id=ucHeader_ucLocation_cbClientID_B-1Img
    Sleep  10s
Enter normal rate shop information
    input text  id=ctl05_ucRateShopWidget_ucQuickRateShop_edOriginZip   77040
    input text  id=ctl05_ucRateShopWidget_ucQuickRateShop_edDestinationZip   77020
Rate quote product
    Wait Until Page Contains Element   ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_B-1
    click element   ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_B-1
    SLEEP  2s
    wait until element is visible  id=ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_DDD_L_LBI3T0
    click element  ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_DDD_L_LBI3T0
    SLEEP  5s
    input text  id=ctl05_ucRateShopWidget_ucQuickRateShop_edProductWeight1_I  50
Rate quote product for shipment
    Wait Until Page Contains Element   ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_B-1
    click element   ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_B-1
    SLEEP  2s
    wait until element is visible  id=ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_DDD_L_LBI3T0
    click element  ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_DDD_L_LBI3T0
    SLEEP  5s
    input text  id=ctl05_ucRateShopWidget_ucQuickRateShop_edProductWeight1_I  5500
Get Rates
    Select Window   MAIN
    Sleep  5s
    Wait Until Page Contains Element      id=ctl05_ucRateShopWidget_ucQuickRateShop_btGetRates_B
    click element         id=ctl05_ucRateShopWidget_ucQuickRateShop_btGetRates_B
    Sleep  10s
    Set Screenshot Directory  /development/robot-scripts/Project/amazon/Results/Screenshots
    Capture Page Screenshot  filename= RateShopInfo_{index}.png
Select carrier from rateshop
    Wait Until Page Contains Element      xpath= //*[@id="ctl05_ucGrid_dxGrid_DXDataRow1"]/td[4]
    click element     xpath= //*[@id="ctl05_ucGrid_dxGrid_DXDataRow1"]/td[4]
    Capture Page Screenshot  filename= CarrierSelected_{index}.png
Print Rate Shop report
    click element   ctl05_ucGrid_ucButtonPanel_btPrintRateShop_BTC   #Print Rate Shop
    Sleep  20s
    Select Window   title= undefined
    Capture Page Screenshot  filename= PrintRateShop_{index}.png
Address Book
    Address Book Button on Shipment Tab Screen
    Set the State - TX
    Address Search Button
    sleep  5s
    click element  xpath= //*[@id="ctl05_ucGrid_dxGrid_DXDataRow2"]/td[1]/a
    Set Screenshot Directory    C:/development/robot-scripts/Project/amazon/Results/Screenshots
    capture page screenshot   filename= Address_{index}.png
Create BOL
      click element    ctl05_ucGrid_ucButtonPanel_btCreateBOL_BTC
      capture page screenshot   filename= CreateBOL_{index}.png
Any accessorials
     Sleep  5s
     Wait Until Page Contains Element     id = ctl05_ucRateShopWidget_ucQuickRateShop_hlAccessorials
     Click Link     id = ctl05_ucRateShopWidget_ucQuickRateShop_hlAccessorials
    Select Checkbox   ctl05_ucRateShopWidget_ucQuickRateShop_pcAccessorials_cxLiftGatePickup
    click element   ctl05_ucRateShopWidget_ucQuickRateShop_pcAccessorials_btOK
    Capture Page Screenshot  filename= accessorials_{index}.png
Print results
    Set Screenshot Directory  /development/robot-scripts/Project/amazon/Results/Screenshots
    Capture Page Screenshot  filename= RateShopQuote_{index}.png
SALES
    click image   ucMenu_ucSales_imIcon
########## Types of shipment ##########
Create Parcel Document Shipment
    click image  id=ctl05_ucShipDoc_imIcon
Create Parcel boxes less than 150lb Shipment
    click image   id=ctl05_ucShipBox_imIcon
Create Standard LTL Shipment
    click image   id=ctl05_ucShipLtl_imIcon
Create LT/Volume Shipment
    click image  id=ctl05_ucShipFtl_imIcon

Create Hot Shot/Local shipment
    click image  id=ctl05_ucShipHoTShot_imIcon
Shipment Tracking
     click image  id=ctl05_ucShipmentTracking_imIcon
     sleep  3s
########## REPORTS ##########
Report Tab
    click image  id=ucMenu_ucReports_imIcon
Report list
    click element   id=ctl05_ucReports_cbReport
    sleep  2s
    wait until page contains element    id=ctl05_ucReports_cbReport_DDD_L_LBI3T0
    click element   id=ctl05_ucReports_cbReport_DDD_L_LBI3T0
    sleep  2s
Report list BOL Data Exchange
    click element   id=ctl05_ucReports_cbReport_B-1Img
    sleep  2s
    wait until page contains element    id= ctl05_ucReports_cbReport_DDD_L_LBI1T0
    click element   id= ctl05_ucReports_cbReport_DDD_L_LBI1T0
    sleep  2s



Report BOL Data Exchange-invoice
    click image  id=ctl05_ucReports_cbInvoiceID4_B-1Img
    sleep  4s
    wait until page contains element   id=ctl05_ucReports_cbInvoiceID4_DDD_L_LBI1T0
    click element   id=ctl05_ucReports_cbInvoiceID4_DDD_L_LBI1T0
Report BOL Data Exchange-Projected Ship Date
    click image   id=ctl05_ucReports_deProjectedShipDateFrom_B-1Img
    sleep  2s
    wait until page contains element   xpath=//*[@id="ctl05_ucReports_deProjectedShipDateFrom_DDD_C_mt"]/tbody/tr[2]/td[7]
    click element   xpath=//*[@id="ctl05_ucReports_deProjectedShipDateFrom_DDD_C_mt"]/tbody/tr[2]/td[7]
    sleep  2s
    click image   id=ctl05_ucReports_deProjectedShipDateTo_B-1Img
    sleep  2s
    wait until page contains element   xpath=//*[@id="ctl05_ucReports_deProjectedShipDateTo_DDD_C_mt"]/tbody/tr[5]/td[6]
    click element   xpath=//*[@id="ctl05_ucReports_deProjectedShipDateTo_DDD_C_mt"]/tbody/tr[5]/td[6]
Report BOL Data Exchange-Actual Ship Date
    click image   id=ctl05_ucReports_deActualShipDateFrom_B-1Img
    sleep  2s
    wait until page contains element   xpath=//*[@id="ctl05_ucReports_deActualShipDateFrom_DDD_C_mt"]/tbody/tr[2]/td[7]
    click element   xpath=//*[@id="ctl05_ucReports_deActualShipDateFrom_DDD_C_mt"]/tbody/tr[2]/td[7]
    sleep  2s
    click image   id=ctl05_ucReports_deActualShipDateTo_B-1Img
    sleep  2s
    wait until page contains element   xpath=//*[@id="ctl05_ucReports_deActualShipDateTo_DDD_C_mt"]/tbody/tr[5]/td[6]
    click element   xpath=//*[@id="ctl05_ucReports_deActualShipDateTo_DDD_C_mt"]/tbody/tr[5]/td[6]
Export to Excel
    click image   id=ctl05_ucReports_btExport_BImg
    sleep  25s
    Set Screenshot Directory    C:/development/robot-scripts/Project/amazon/Results/Screenshots
    capture page screenshot   filename= Excel_{index}.png
click on Report raw data
    click image   id=ctl05_ucReports_cbReportRaw_B-1Img
    sleep   2s
    click element  id=ctl05_ucReports_cbReportRaw_DDD_L_LBI0T0
click on Parcel Raw Data
    click image   id=ctl05_ucReports_cbReportRaw_B-1Img
    sleep   2s
    click element  id=ctl05_ucReports_cbReportRaw_DDD_L_LBI1T0
Report raw data -Invoice

    wait until page contains element  xpath=//*[@id="ctl05_ucReports_cbInvoiceID3_I"]
    click element  xpath=//*[@id="ctl05_ucReports_cbInvoiceID3_I"]
    sleep  2s
    wait until page contains element  id=ctl05_ucReports_cbInvoiceID3_DDD_L_LBI3T0
    click element   id=ctl05_ucReports_cbInvoiceID3_DDD_L_LBI3T0
Report raw data -Date
    click image   id=ctl05_ucReports_deFBDateFrom3_B-1Img
    sleep  2s
    wait until page contains element   xpath=//*[@id="ctl05_ucReports_deFBDateFrom3_DDD_C_mt"]/tbody/tr[7]/td[5]
    click element   xpath=//*[@id="ctl05_ucReports_deFBDateFrom3_DDD_C_mt"]/tbody/tr[7]/td[5]
    sleep  2s
    click image  id= ctl05_ucReports_deFBDateTo3_B-1Img
    sleep  2s
    wait until page contains element   xpath=//*[@id="ctl05_ucReports_deFBDateTo3_DDD_C_mt"]/tbody/tr[7]/td[7]
    click element   xpath=//*[@id="ctl05_ucReports_deFBDateTo3_DDD_C_mt"]/tbody/tr[7]/td[7]
click on export to excel
    click image   id=ctl05_ucReports_btExportRaw_BImg
     sleep  25s
     Set Screenshot Directory    C:/development/robot-scripts/Project/amazon/Results/Screenshots
    capture page screenshot     filename= Excel1_{index}.png
########## Shipment data entry ##########
Enter Shipment data
    Click on the Ship To section
Insert address
    Click Find in Address Book
    Set the State - TX
    Address Search Button
    sleep  5s
    Wait Until Page Contains Element    xpath= //*[@id="ctl05_ucGrid_dxGrid_DXDataRow0"]/td[1]/a  timeout=10
    click element  xpath= //*[@id="ctl05_ucGrid_dxGrid_DXDataRow0"]/td[1]/a
    Set Screenshot Directory    C:/development/robot-scripts/Project/amazon/Results/Screenshots
    capture page screenshot   filename= Address_{index}.png
Insert address WP
    Click Find in Address Book
    Set the State - TX
    Address Search Button
	wait until page contains element     xpath=//*[@id="ctl05_ucGrid_dxGrid_DXDataRow2"]/td[1]/a  timeout=10
    capture page screenshot   filename= Address_{index}.png
	Click ELEMENT     xpath=//*[@id="ctl05_ucGrid_dxGrid_DXDataRow2"]/td[1]/a
	sleep   3s
    Select Window   MAIN
    input text    id=ctl05_ucShipmentEntryControl_rpAddress_pnlAddress_edDST_Company   alpha orgnasization
    input text     ctl05_ucShipmentEntryControl_rpAddress_pnlAddress_edDST_Contact   raphael
    input text     ctl05_ucShipmentEntryControl_rpAddress_pnlAddress_edDST_Phone_I   4232343333
    Set Screenshot Directory    C:/development/robot-scripts/Project/amazon/Results/Screenshots
    capture page screenshot   filename= Address_{index}.png

Insert address tryc
    Click Find in Address Book
    Set the State - NY
    Address Search Button
    sleep  5s
    click element  xpath= //*[@id="ctl05_ucGrid_dxGrid_DXDataRow3"]/td[1]/a
    Set Screenshot Directory    C:/development/robot-scripts/Project/amazon/Results/Screenshots
    capture page screenshot   filename= Address_{index}.png
Insert Shipment Products
    Select Window   MAIN
    Click on Shipment Products section
    sleep  2s
    Set Class
    sleep  2s
    Set Weight
    Set Length
    Set Width
    Set Height
    Set Units
    capture page screenshot     filename= ShipmentProduct_{index}.png
Insert Shipment Products LTL
    Select Window   MAIN
    Click on Shipment Products section
    sleep  5s
    Set Piece Count
    Set Class
    sleep  2s
    Set Weight
    Set Length
    Set Width
    Set Height
    Set Units
    Set Total Handling Units
    Set Product Shipped
    sleep  2s
    capture page screenshot         filename= ShipmentProduct_{index}.png
Insert Shipment Products WP
    Select Window   MAIN
    Click on Shipment Products section
    wait until page contains element   xpath= //*[@id="ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_5___gen__gdProducts__Quantity__002D0032003100340037003400380033003600340035_B-2"]  timeout=10
    click element   xpath= //*[@id="ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_5___gen__gdProducts__Quantity__002D0032003100340037003400380033003600340035_B-2"]
    Set Class
	Set Weight
    Set Length
    Set Width
    Set Height
    Set Units
    Set Total Handling Units
    Set Product Shipped
    Set Package Type

    capture page screenshot         filename= ShipmentProduct_{index}.png
Insert Additional Information
    Click on Additional Information section
    sleep  2s
    Set Sales Order
    Set Purchase Order
    Set Job Number
    capture page screenshot     filename= AdditionalInformation_{index}.png
Insert Additional Information Acem
    Click on Additional Information section
    sleep  2s
    Set Sales Order
    Set Purchase Order
    Set Location Code
    capture page screenshot     filename= AdditionalInformation_{index}.png
Insert Additional Information TSUC
    Click on Additional Information section
    sleep  2s
    Set Account Number
    sleep  2s
    Set Customer Name (TSUC)
    Set Line of Business
Carrier rate
    Click on Carrier section
    sleep  3s
    Set PRO Number
    capture page screenshot         filename= Carrier_{index}.png
Carrier
    Click on Carrier section
    Click on Get Carrier Rate Quotes Button
    Select a carrier from results
    capture page screenshot         filename= CarrierOption_{index}.png
    Click on Continue
    Select Window   MAIN
    Set PRO Number
    capture page screenshot         filename= Carrier_{index}.png
Carrier 2
    Click on Carrier section
    Click on Get Carrier Rate Quotes Button
    select window  MAIN
    Execute Javascript    window.scrollTo(0,0);
    capture page screenshot         filename= CarrierAlert_{index}.png
Carrier TSUC
    Click on Carrier section
    Click on Get Carrier Rate Quotes Button
    Select a carrier from results
    capture page screenshot         filename= CarrierOption_{index}.png
    Click on Continue
    Select Window   MAIN
    Set PRO Number
    Tick on the Carrier Disclaimer checkbox
    capture page screenshot         filename= Carrier_{index}.png
Shipment Codes
        Click on Shipment Codes section
        sleep  2s
        input text         xpath=//*[@id="ctl05_ucShipmentEntryControl_rpShipmentCodes_pnlShipmentCodes_gdShipCode_dxGrid_cell0_2___gen__gdShipCode__ShipmentCode__002D0032003100340037003400380033003600340038_edText_SHIPMENTCODE"]   132465789
         capture page screenshot         filename= ShipmentCodes_{index}.png
Shipment Codes WP
       Click on Shipment Codes section
        sleep  2s
        input text         xpath=//*[@id="ctl05_ucShipmentEntryControl_rpShipmentCodes_pnlShipmentCodes_gdShipCode_dxGrid_cell0_2___gen__gdShipCode__ShipmentCode__002D0032003100340037003400380033003600340038_edText_SHIPMENTCODE"]   652.48170 D 30
        capture page screenshot         filename= ShipmentCodes_{index}.png
Carrier Notification
    Click on Carrier Notification section
    Set Expected Ship Date
    capture page screenshot         filename= CarrierNotification_{index}.png
Verify the pickup request
    sleep  12s
    Wait Until Page Contains Element  id=ucMenu_ucShipping_imActiveIcon
    Click Element    id=ucMenu_ucShipping_imActiveIcon
    sleep  2s
    click image   id=ctl05_ucShipmentTracking_imIcon
    sleep  2s
    capture page screenshot         filename= PickupRequest_{index}.png
Carrier LT
    Click on Carrier section
    Carrier field
    sleep  2s
    Set FREIGHT COWBOY as carrier
    sleep  2s
    Set PRO Number
   Tick on the Carrier Disclaimer checkbox
    capture page screenshot         filename= Carrier_{index}.png

Carrier LT fix
    Click on Carrier section
    Carrier field
    sleep  2s
    Set FREIGHT COWBOY as carrier
    sleep  2s
    Set PRO Number
    capture page screenshot         filename= Carrier_{index}.png
Equipment and Accessories
    click element  id=ctl05_ucShipmentEntryControl_rpEquipment_HTC_hlEquipment
    select radio button  ctl05$ucShipmentEntryControl$rpEquipment$pnlEquipment$rbRFQEquipmentTypeID  10
    select checkbox  id=ctl05_ucShipmentEntryControl_rpEquipment_pnlEquipment_gdRFQAccessories_dxGrid_cell4_0___gen__gdRFQAccessories__Selected__00320030
    capture page screenshot         filename= EquipmentNaccessories_{index}.png
Finish/Print
    Click on the Finish/Print
    capture page screenshot         filename= FinishPrint_{index}.png
Print BOL & Labels
     click element   id=ctl05_ucShipmentEntryControl_btPrintBOLLabel_BTC
     sleep  2s
     capture page screenshot         filename= FinishPrint_{index}.png
Click on Email BOL
    click element   id=ctl05_ucShipmentEntryControl_btEmailBOL
    sleep  2s
    capture page screenshot         filename= emailBOL_{index}.png
Enter email
    click element  ctl05_ucShipmentEntryControl_pcSendBOL_PW-1
    sleep  3s
    wait until page contains element   id=ctl05_ucShipmentEntryControl_pcSendBOL_edEmailAddresses_I
    click element   id=ctl05_ucShipmentEntryControl_pcSendBOL_edEmailAddresses_I
    input text   id=ctl05_ucShipmentEntryControl_pcSendBOL_edEmailAddresses_I  rdamasceno@webcreek.com
    sleep  2s
    capture page screenshot         filename= EnterEmail_{index}.png
    click element   id= ctl05_ucShipmentEntryControl_pcSendBOL_btSend
Request For Quote (RFQ)
    click element   ctl05_ucShipmentEntryControl_rpCarrier_HTC_btRFQHdr_B
    sleep  3s
    click image   ctl05_ucRFQEdit_rpStep1_deDeliveryDate_B-1Img
    sleep  3s
    click element   xpath = //*[@id="ctl05_ucRFQEdit_rpStep1_deDeliveryDate_DDD_C_mt"]/tbody/tr[6]/td[5]
    sleep  3s
    input text        ctl05_ucRFQEdit_rpStep4_acCarrierToAdd_edText_CarrierToAdd    SAIA
    sleep  5s
    click element    xpath= //*[@id="ctl05_ucRFQEdit_rpStep4_acCarrierToAdd_autoControl_CarrierToAdd_completionListElem"]
    sleep  3s
    capture page screenshot         filename= RFQ_{index}.png
    click element   ctl05_ucRFQEdit_rpStep4_btAddCarrier_B
    input text     ctl05_ucRFQEdit_rpStep4_gdCarriers_dxGrid_cell0_2___gen__gdCarriers__ContactEmails__002D0032003100340037003400380033003600340038   rdamasceno@webcreek.com
    Select Checkbox    //*[@id="ctl05_ucRFQEdit_rpStep4_gdCarriers_dxGrid_cell0_0___gen__gdCarriers__Selected__002D0032003100340037003400380033003600340038"]
    input text      ctl05_ucRFQEdit_rpStep4_gdCarriers_dxGrid_cell2_2___gen__gdCarriers__ContactEmails__002D0032003100340037003400380033003600340036    rdamasceno@webcreek.com
    click element   ctl05_ucRFQEdit_ctl00_btSave
    sleep  3s
    Dismiss Alert   accept=True
    capture page screenshot         filename= RFQ_{index}.png
Transportation Mode
            sleep  5s
            click image     ctl05_ucRateShopWidget_ucQuickRateShop_cbEquipmentTypeCode_B-1Img
            sleep  5s
            wait until page contains element     ctl05_ucRateShopWidget_ucQuickRateShop_cbEquipmentTypeCode_DDD_L_LBI1T0
            click element     ctl05_ucRateShopWidget_ucQuickRateShop_cbEquipmentTypeCode_DDD_L_LBI1T0
            capture page screenshot         filename= TransportationMode_{index}.png
Transportation Mode Parcel


            sleep  5s
            click image     ctl05_ucRateShopWidget_ucQuickRateShop_cbEquipmentTypeCode_B-1Img
            sleep  5s
            wait until page contains element     ctl05_ucRateShopWidget_ucQuickRateShop_cbEquipmentTypeCode_DDD_L_LBI5T0
            click element     ctl05_ucRateShopWidget_ucQuickRateShop_cbEquipmentTypeCode_DDD_L_LBI5T0
            capture page screenshot         filename= TransportationMode_{index}.png
Search Criteria
        click image    ctl05_ucSearch_ctl02_cbCarrierID_B-1Img
        capture page screenshot         filename= droplist_{index}.png
        click image    ctl05_ucSearch_ctl02_cbCarrierID_B-1Img
        sleep  3s
        wait until page contains element       id=ctl05_ucSearch_btSearch
        click element            id=ctl05_ucSearch_btSearch
Verify Result
         sleep  3s
         wait until page contains element       id=ctl05_ucGrid_dxGrid_col8
        click element            id=ctl05_ucGrid_dxGrid_col8
        capture page screenshot         filename= result_{index}.png
Enter login information Saia
   Go to    https://QA.newblims.com/
   #https://test.newblims.com/
   Wait Until Page Contains Element  id=ctl05_imgLogo
   input text  id=ctl05_edUserName  saia
   input text  ctl05_edPassword  Broussard2
   SLEEP  3s
   Wait Until Page Contains Element    id=ctl05_btLogin
   Click Element    id=ctl05_btLogin
   SLEEP  3s
   click image    ctl05_ucFbSearch_imIcon
   Set Screenshot Directory    C:/development/robot-scripts/Project/amazon/Results/Screenshots
   Capture Page Screenshot  filename= SAIAportal_{index}.png
SEARCH CRITERIA SAIA
    click image     ctl05_ucSearch_ctl02_cbStatusID_B-1Img
    SLEEP  3s
    Wait Until Page Contains Element     ctl05_ucSearch_ctl02_cbStatusID_DDD_L_LBI6T0
    Click Element        ctl05_ucSearch_ctl02_cbStatusID_DDD_L_LBI6T0
    sleep      3s
    Click Element    ctl05_ucSearch_btSearch
    sleep   3s
    Dismiss Alert          accept=True
    Capture Page Screenshot  filename= searchResult_{index}.png
Click on Checks
      sleep   3s
      click element           xpath= //*[@id="ctl05_ucGrid_dxGrid_DXDataRow4"]/td[5]/a
      Capture Page Screenshot  filename= check_{index}.png
Click on Checks 2
     sleep   3s
     click element           xpath= //*[@id="ctl05_ucGrid_dxGrid_DXDataRow0"]/td[5]/a
     Get Window Identifiers
Print Checks
     sleep    5s
     Select Window   title= undefined
     sleep    3s
     Capture Page Screenshot  filename= check-{index}.png
     close window
     sleep    3s
     Select Window       MAIN
     Capture Page Screenshot  filename= return_{index}.png
ACCOUNTING
   click image  ucMenu_ucAccounting_imIcon
   sleep  3s
   Set Screenshot Directory    C:/development/robot-scripts/Project/amazon/Results/Screenshots
   Capture Page Screenshot  filename= ACCOUNTING_{index}.png
Freight Bills On Hold
  click image  ctl05_imFreightBillsOnHold
  sleep  3s
  Execute Javascript    window.scrollTo(0,500);
  Capture Page Screenshot  filename= FreightBillsOnHold_{index}.png
Resolve
   click element   xpath= //*[@id="ctl05_ucGrid_dxGrid_DXDataRow0"]/td[10]/a
   Capture Page Screenshot  filename= Resolve_{index}.png
Keep On Hold
  input text  ctl05_ctl01_edNoteText  testestsetsetestsetset
  click element   ctl05_ctl01_btSave_CD
  sleep  3s
  Execute Javascript    window.scrollTo(0,500);
  Capture Page Screenshot  filename= OnHold_{index}.png
Approve
  input text  ctl05_ctl01_edNoteText  testestsetsetestsetset
  select radio button  ctl05$ctl01$FreightBillStatus  rbApprove
  click element   ctl05_ctl01_btSave_CD
  sleep  3s
  Execute Javascript    window.scrollTo(0,500);
  Capture Page Screenshot  filename= approve_{index}.png
Reject
  input text  ctl05_ctl01_edNoteText  testestsetsetestsetset
  select radio button  ctl05$ctl01$FreightBillStatus  rbReject
  click element   ctl05_ctl01_btSave_CD
  sleep  3s
  Execute Javascript    window.scrollTo(0,500);
  Capture Page Screenshot  filename= approve_{index}.png
carrier dropdown in tracking
   Click image  ctl05_ucSearch_ctl02_cbCarrierID_B-1Img
   sleep  3s
   Set Screenshot Directory    C:/development/robot-scripts/Project/amazon/Results/Screenshots
   Capture Page Screenshot  filename= trackingCarrier_{index}.png
   click element    ctl05_ucSearch_ctl02_edDST_Zip
Tracking search
     sleep  3s
   click element   id=ctl05_ucSearch_btSearch
tracking result
    Execute Javascript    window.scrollTo(0,500);
    Capture Page Screenshot  filename= AllLocation_{index}.png
uncheck all location
     Unselect Checkbox   ctl05_ucSearch_ctl02_ckSearchAllLocations
     Capture Page Screenshot  filename= uncheck_{index}.png
Insert Product
        Click on Shipment Products section
        sleep  3s
        click image   ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_3___gen__gdProducts__ProductShippedID__002D0032003100340037003400380033003600340032_B-1Img
        sleep  3s
        wait until page contains element              xpath= //*[@id="ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_3___gen__gdProducts__ProductShippedID__002D0032003100340037003400380033003600340032_DDD_L_LBI1T0"]
        click element          xpath= //*[@id="ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_3___gen__gdProducts__ProductShippedID__002D0032003100340037003400380033003600340032_DDD_L_LBI1T0"]
        click image               ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_6___gen__gdProducts__UOMID__002D0032003100340037003400380033003600340032_B-1Img
        wait until page contains element     id = ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_6___gen__gdProducts__UOMID__002D0032003100340037003400380033003600340032_DDD_L_LBI1T0
        sleep  3s
        click element                   id = ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_6___gen__gdProducts__UOMID__002D0032003100340037003400380033003600340032_DDD_L_LBI1T0