*** Settings ***
Library   SeleniumLibrary
Library     String
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
    Wait Until Page Contains Element  id=ctl05_btLogin
    Click Element  id=ctl05_btLogin
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
    Go to    https://test.newblims.com/
    # https://QA.newblims.com/
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

Carrier quote history WP
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
   ${QuoteNumber}=    Execute Javascript  return document.getElementsByClassName("QuoteNumber")[0].innerHTML;
    Sleep  5s
    click element  id=ctl05_ucSearch_ctl02_hpCarrierCuoteHistory
    input text   xpath=//*[@id="ctl05_ucSearch_ctl02_edQuoteNumber"]  ${QuoteNumber}

    Capture Page Screenshot  filename= RateShopInfo_{index}.png
    Click element  xpath=//*[@id="ctl05_ucSearch_btSearch_CD"]
    Sleep  5s
    Execute Javascript      window.scrollTo(0, 500);
    Capture Page Screenshot  filename= RateShopInfo_{index}.png
    click link  xpath=//*[@id="ctl05_ucGrid_dxGrid_DXDataRow0"]/td[1]/a
     Sleep  5s
     Execute Javascript      window.scrollTo(0, 500);
    Capture Page Screenshot  filename= RateShopInfo_{index}.png





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
    input text     ctl05$ucShipmentEntryControl$rpAddress$pnlAddress$edDST_Address1   105st west
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
    Execute Javascript      window.scrollTo(0, 300);
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


Result of RFQ

    click image  id=ucMenu_ucShipping_imActiveIcon
    click image  id=ctl05_ucRFQs_imIcon
    Execute Javascript      window.scrollTo(0, 500);
    Capture Page Screenshot  filename= RFQ_{index}.png


Individual Quick Search
    ${BOLNum}=    Execute Javascript  return document.getElementById("ctl05_ucConfirm_lbBOLNumber").innerHTML;
    Sleep  10s
    select frame    xpath=//*[@id="pcMain_CIF-1"]
    Sleep  5s
    click element   id=pcMain_HCB-1
    Sleep  5s
    click image  id=ucMenu_ucSales_imIcon
    Sleep  3s
    click image  id=ucMenu_ucShipping_imIcon
    input text   xpath=//*[@id="ctl05_edTrackingParam"]  ${BOLNum}
    Capture Page Screenshot  filename= Individual_Quick_Search{index}.png
    click element  id=ctl05_btSearchShipment_CD
    Execute Javascript      window.scrollTo(200, 500);
    Capture Page Screenshot  filename= Individual_Quick_Search{index}.png
    Click element   id=ctl05_ucGrid_ucButtonPanel_btExport_BTC


Click on Facebook icon

    click link  id=ucFooter_ucFollowUs_rpFollowUs_ctl00_HyperLink1
    Sleep  3s
    Select Window  url=https://www.facebook.com/BroussardLogistics
    Capture Page Screenshot  filename= facebook{index}.png

Click on LinkedIn icon

    click link  id=ucFooter_ucFollowUs_rpFollowUs_ctl01_HyperLink1
    Sleep  3s
    Select Window   locator=NEW
    Capture Page Screenshot  filename= LinkedIn{index}.png

Click on twitter icon

    click link  id=ucFooter_ucFollowUs_rpFollowUs_ctl02_HyperLink1
    Sleep  10s
    Select Window   locator=NEW
    Capture Page Screenshot  filename= twitter{index}.png
Click on Tell a Friend about this Site icon
    click link  ucFooter_hlTellFriend
    Sleep  3s
    input text  xpath= //*[@id="ucFooter_pnTFSendMailControl_edTFEmailAddress_I"]        rdamasceno@webcreek.com
    click element  ucFooter_pnTFSendMailControl_btSendTFEmail_CD
    Capture Page Screenshot  filename= emailfriend{index}.png
logout link
    CLICK link   ucFooter_hlLogout
    Capture Page Screenshot  filename= logout{index}.png

Click on Account Specialist
       click element  xpath=//*[@id="ucMenu_hlAccount"]

Click on Website Support
       click element   xpath=//*[@id="ucMenu_hlSupport"]
Click on Tips and Training
    click element   xpath=//*[@id="ucMenu_pnContacts"]/div/table/tbody/tr/td[1]/a
    Select Window   locator=NEW
    Capture Page Screenshot  filename= TipsandTraining{index}.png
Click on Client
    click element   xpath=//*[@id="ucHeader_ucLocation_cbClientID_B-1Img"]
    Capture Page Screenshot  filename= Client{index}.png
Click on location
    click image  xpath=//*[@id="ucHeader_ucLocation_cbLocationID_B-1Img"]
    Capture Page Screenshot  filename= location{index}.png
Click on header search
        input text   xpath=//*[@id="ucHeader_ucHeaderSearch_edSearchFor"]   shipments
        Capture Page Screenshot  filename= HeaderSearch{index}.png
        click element   xpath=//*[@id="ucHeader_ucHeaderSearch_btSearch"]
        Sleep  10s
        Capture Page Screenshot  filename= HeaderSearch{index}.png
Click on Sale Tab
    click element   xpath=//*[@id="ucMenu_ucSales_imIcon"]
    Capture Page Screenshot  filename= Sales{index}.png

insert Origin Zip
        input text    xpath=//*[@id="ctl05_ucRateShopWidget_ucQuickRateShop_edOriginZip"]  77035

insert Destination Zip
        input text    xpath=//*[@id="ctl05_ucRateShopWidget_ucQuickRateShop_edDestinationZip"]  73344

Set Class WP
    click element  id=ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_B-1
    sleep  3s
    click element  xpath=//*[@id="ctl05_ucRateShopWidget_ucQuickRateShop_cbProductClassCode1_DDD_L_LBI5T0"]
     Capture Page Screenshot  filename= class{index}.png
Set Weight WP
   input text  id=ctl05_ucRateShopWidget_ucQuickRateShop_edProductWeight1_I  500
   Capture Page Screenshot  filename= weight{index}.png
click on get rate
        click element  id=ctl05_ucRateShopWidget_ucQuickRateShop_btGetRates_CD
        Sleep  10s
        Capture Page Screenshot  filename= quoteresult{index}.png


In Transit/Delivered
    ${BOLNum}=    Execute Javascript  return document.getElementById("ctl05_ucConfirm_lbBOLNumber").innerHTML;
    Sleep  10s
    select frame    xpath=//*[@id="pcMain_CIF-1"]
    Sleep  5s
    click element    xpath=//*[@id="pcMain_HCB-1"]
    Sleep  5s
    click image  id=ucMenu_ucSales_imIcon
    Sleep  3s
    click element   xpath=//*[@id="ctl05_ucShipmentTracking_hlMenuItem"]
    Sleep  3s
    input text   xpath=//*[@id="ctl05_ucSearch_ctl02_edSearchString"]    ${BOLNum}
    Capture Page Screenshot  filename= BOLNum{index}.png
    click element   id=ctl05_ucSearch_btSearch_B
    Sleep  5s
    Execute Javascript      window.scrollTo(0, 500);
    Capture Page Screenshot  filename= BOLNum{index}.png
    click element   xpath=//*[@id="ctl05_ucGrid_ucButtonPanel_btExport_B"]
Click on NewSalesQuote
    Sleep  5s
    click element  xpath=//*[@id="ctl05_ucNewSalesQuote_imIcon"]

Terms & Address Information
    input text    xpath=//*[@id="ctl05_ucWizard_ctl02_ctl01_edCustomerName"]  Raphael Damasceno
    input text   xpath=//*[@id="ctl05_ucWizard_ctl02_ctl01_edDST_Company"]    test company
    input text   xpath=//*[@id="ctl05_ucWizard_ctl02_ctl01_edDST_Zip"]    77040
    input text   xpath=//*[@id="ctl05_ucWizard_ctl02_ctl01_edDST_Address1"]  105st west
   input text    xpath=//*[@id="ctl05_ucWizard_ctl02_ctl01_edDST_Contact"]  rafa
    input text   xpath=//*[@id="ctl05_ucWizard_ctl02_ctl01_edDST_Phone"]   1234567894
    Capture Page Screenshot  filename= TermsAddressInformation{index}.png
    click element  xpath=//*[@id="ctl05_ucWizard_ctl02_StartNavigationTemplateContainerID_ctl01_CD"]
    sleep  10s
Product Information

        click element  xpath=//*[@id="ctl05_ucWizard_ctl02_ctl02_gdProducts_dxGrid_cell0_0___gen__gdProducts__ProductShippedID__002D0032003100340037003400380033003600340032_B-1Img"]
         sleep  2s
        click element  xpath=//*[@id="ctl05_ucWizard_ctl02_ctl02_gdProducts_dxGrid_cell0_0___gen__gdProducts__ProductShippedID__002D0032003100340037003400380033003600340032_DDD_L_LBI5T0"]
        click element  xpath= //*[@id="ctl05_ucWizard_ctl02_ctl02_gdProducts_dxGrid_cell0_3___gen__gdProducts__Quantity__002D0032003100340037003400380033003600340032_B-2Img"]
         sleep  2s
        click element  xpath= //*[@id="ctl05_ucWizard_ctl02_ctl02_gdProducts_dxGrid_cell0_4___gen__gdProducts__UOMID__002D0032003100340037003400380033003600340032_B-1Img"]
        sleep  2s
        click element  xpath= //*[@id="ctl05_ucWizard_ctl02_ctl02_gdProducts_dxGrid_cell0_4___gen__gdProducts__UOMID__002D0032003100340037003400380033003600340032_DDD_L_LBI2T0"]
         sleep  2s
        click element  xpath= //*[@id="ctl05_ucWizard_ctl02_ctl02_gdProducts_dxGrid_cell0_9___gen__gdProducts__Weight__002D0032003100340037003400380033003600340032_B-2Img"]
        sleep  2s
        click element  xpath=//*[@id="ctl05_ucWizard_ctl02_ctl02_gdProducts_dxGrid_cell0_10___gen__gdProducts__TotalHandlingUnits__002D0032003100340037003400380033003600340032_B-2Img"]
        Capture Page Screenshot  filename= ProductInformation{index}.png
         click element  xpath=//*[@id="ctl05_ucWizard_ctl02_StepNavigationTemplateContainerID_ctl02_CD"]
Find a Carrier
        sleep  40s
        click element  xpath= //*[@id="ctl05_ucWizard_ctl02_ctl03_ucQuickRateShop_dxGrid_DXSelBtn0_D"]
        Capture Page Screenshot  filename= Carrier{index}.png
        click element  xpath= //*[@id="ctl05_ucWizard_ctl02_StepNavigationTemplateContainerID_ctl02_B"]
        sleep  40s
        select frame    xpath=//*[@id="pcMain_CIF-1"]
         Execute Javascript      window.scrollTo(0, 0);
        Capture Page Screenshot  filename= SalesQuoteRateConfirmation{index}.png

Click on Create Invoice
        click element   xpath=//*[@id="ctl05_ucCreateInvoice_imIcon"]
        Capture Page Screenshot  filename= CreateInvoice{index}.png
Click on BOL Number
         click element  xpath=//*[@id="ctl05_ucGrid_dxGrid_DXDataRow0"]/td[1]/a
         Capture Page Screenshot  filename= BOLNumber{index}.png
Click on CreateInvoice button
        click element    xpath=//*[@id="ctl05_pcInvoice_btCreateInvoice_CD"]
        Select Window   locator=NEW
        sleep  20s
        Capture Page Screenshot  filename= CreateInvoice{index}.png
Click on Report CreateInvoice
        click element    xpath=//*[@id="ctl05_ucReports_ucCreateInvoice_imIcon"]
        Capture Page Screenshot  filename= CreateInvoice{index}.png
        sleep  5s
        click element    xpath=//*[@id="ctl05_ucReports_pcInvoice_btCreateInvoice_B"]
Click on site Usage
           click element    xpath=//*[@id="ctl05_ucReports_ucReportUsage_imgMain"]
           Execute Javascript      window.scrollTo(0, 500);
            Capture Page Screenshot  filename= siteUsage{index}.png
            sleep  3s
Click on Report Export
            click element    xpath=//*[@id="ctl05_ucGrid_ucButtonPanel_btExport_BTC"]
            sleep  15s
             Capture Page Screenshot  filename= ReportExport{index}.png

Print site Usage
            sleep  15s
            click element    xpath=//*[@id="ctl05_ucGrid_ucButtonPanel_btPrint_BImg"]
            sleep  15s
             Capture Page Screenshot  filename= PrintsiteUsage{index}.png

Click on Carrier rate quotes requested
        click element    xpath=//*[@id="ctl05_ucReports_ucRateQuotes_imgMain"]
        Sleep  3s
         Capture Page Screenshot  filename= Carrierratequotesrequested{index}.png
Click on CARRIER RATE QUOTES REQUESTED Report Export
             Sleep  10s
          click element    xpath=//*[@id="ctl05_ucGrid_ucButtonPanel_btExport_BImg"]
         Sleep  15s
         Capture Page Screenshot  filename= Carrierratequotesrequested{index}.png
CARRIER RATE QUOTES REQUESTED Set date
             click element    xpath=//*[@id="ctl05_ucSearch_ctl02_deDateFrom_B-1Img"]
             Sleep  10s
         Capture Page Screenshot  filename= date{index}.png
         click element    xpath=//*[@id="ctl05_ucSearch_ctl02_deDateFrom_DDD_C_BT"]/table
         Capture Page Screenshot  filename= date{index}.png
           Sleep  3s
         click element    xpath=//*[@id="ctl05_ucSearch_btSearch_CD"]

Click on Shipment created
         click element     xpath=//*[@id="ctl05_ucReports_ucShipments_imgMain"]

Click on Analytics
    click element    xpath=//*[@id="ctl05_ucReports_ucGenericDashboard_imgMain"]
    Capture Page Screenshot  filename= Analytics{index}.png
    Sleep  3s
    click element    xpath=//*[@id="ctl05_ucGenericDashboard_btPrintDashboard_CD"]
    Sleep  3s
    click element    xpath=//*[@id="ctl05_ucGenericDashboard_pcPrint_btPrint"]
    Capture Page Screenshot  filename= Analytics{index}.png
Click on Email Freight Bill info

    click element    xpath=//*[@id="ctl05_ctl01_btSendFreighBill_B"]
Email freight bill info
    input text   xpath=//*[@id="ctl05_ctl01_pcSendFB_edEmailAddresses_I"]  rdamasceno@webcreek.com
    Capture Page Screenshot  filename= email{index}.png
    click element    xpath=//*[@id="ctl05_ctl01_pcSendFB_btSend_B"]
Click on Admin
    click element    xpath=//*[@id="ucMenu_ucAdmin_imIcon"]
     Capture Page Screenshot  filename= admin{index}.png
Click on Products
    click element    xpath=//*[@id="ctl05_ucProducts_hlMenuItem"]
    Capture Page Screenshot  filename= Products{index}.png
Add product
    click element    xpath=//*[@id="ctl05_ucGrid_ucButtonPanel_btCreateNew_B"]
    Capture Page Screenshot  filename= Products{index}.png
    sleep  5s
    select frame    xpath=//*[@id="pcMain_CIF-1"]
     ${RandomString}=         Generate Random String    10    [LETTERS]
    input text   xpath=//*[@id="ctl05_ucEdit_edProductDescription"]    ${RandomString}
    sleep  3s
    click element    xpath=//*[@id="ctl05_ucEdit_cbProductClassCode_B-1Img"]
    sleep  3s
    click element   xpath=//*[@id="ctl05_ucEdit_cbProductClassCode_DDD_L_LBI1T0"]
    Capture Page Screenshot  filename= Products{index}.png
    click element   xpath=//*[@id="ctl05_ucEdit_ctl01_btSave_B"]
    sleep  10s
    Capture Page Screenshot  filename= Products{index}.png

