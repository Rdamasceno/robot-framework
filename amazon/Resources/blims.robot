*** Settings ***
Library  Selenium2Library


*** Keywords ***


Enter login information
    Go to  https://test.newblims.com/
    Wait Until Page Contains Element  id=ctl05_imgLogo
    input text  id=ctl05_edUserName  RPRIESTHWC1
    input text  ctl05_edPassword  Broussard2
    SLEEP  3s
    Wait Until Page Contains Element    id=ctl05_btLogin
    Click Element    id=ctl05_btLogin
    SLEEP  3s
    Wait Until Page Contains Element  id=ucMenu_ucShipping_imIcon
    Click Element    id=ucMenu_ucShipping_imIcon
Enter rate shop information
    input text  id=ctl05_ucRateShopWidget_ucQuickRateShop_edOriginZip  77040
    input text  id=ctl05_ucRateShopWidget_ucQuickRateShop_edDestinationZip  77020
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

Print results
    Set Screenshot Directory  /development/robot-scripts/Project/amazon/Results/Screenshots
    Capture Page Screenshot  filename= RateShopQuote_{index}.png
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
########## REPORTS ##########
Report Tab
    click image  id=ucMenu_ucReports_imIcon
Report list
    click element   id=ctl05_ucReports_cbReport
    sleep  2s
    wait until page contains element    id=ctl05_ucReports_cbReport_DDD_L_LBI3T0
    click element   id=ctl05_ucReports_cbReport_DDD_L_LBI3T0
Report BOL Data Exchange-invoice
    click image  id=ctl05_ucReports_cbInvoiceID4_B-1Img
    sleep  2s
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
    capture page screenshot
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
    click image   id=ctl05_ucReports_deDateFrom3_B-1Img
    sleep  2s
    wait until page contains element   xpath=//*[@id="ctl05_ucReports_deDateFrom3_DDD_C_mt"]/tbody/tr[2]/td[7]
    click element   xpath=//*[@id="ctl05_ucReports_deDateFrom3_DDD_C_mt"]/tbody/tr[2]/td[7]
    sleep  2s
    click image  id= ctl05_ucReports_deDateTo3_B-1Img
    wait until page contains element   xpath=//*[@id="ctl05_ucReports_deDateTo3_DDD_C_mt"]/tbody/tr[5]/td[6]
    click element   xpath=//*[@id="ctl05_ucReports_deDateTo3_DDD_C_mt"]/tbody/tr[5]/td[6]
click on export to excel
    click image   id=ctl05_ucReports_btExportRaw_BImg
     sleep  25s
    capture page screenshot

########## Shipment data entry ##########
Enter Shipment data
    click element  id=ctl05_ucShipmentEntryControl_rpAddress_HTC_hlAddress
Insert address
    click element  id=ctl05_ucShipmentEntryControl_rpAddress_pnlAddress_btAddrLookupDST_B
    select frame    xpath=//*[@id="pcMain_CIF-1"]
    wait until page contains element  id=ctl05_ucSearch_ctl02_cbState_B-1
    click element  id =ctl05_ucSearch_ctl02_cbState_B-1
    sleep  5s
    Wait Until Page Contains Element    id=ctl05_ucSearch_ctl02_cbState_DDD_L_LBI58T0
    click element  id=ctl05_ucSearch_ctl02_cbState_DDD_L_LBI58T0
    CLICK ELEMENT  id=ctl05_ucSearch_btSearch_CD
    sleep  5s
    click element  xpath=//*[@id="ctl05_ucGrid_dxGrid_DXDataRow0"]/td[1]
    capture page screenshot
Insert Shipment Products
    Select Window   MAIN
    wait until page contains element    xpath=//*[@id="ctl05_ucShipmentEntryControl_rpProducts_HTC_hlProducts"]
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_HTC_hlProducts
    sleep  2s
    wait until page contains element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_4___gen__gdProducts__ProductClassCode__002D0032003100340037003400380033003600340035_B-1
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_4___gen__gdProducts__ProductClassCode__002D0032003100340037003400380033003600340035_B-1
    sleep  2s
    wait until page contains element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_4___gen__gdProducts__ProductClassCode__002D0032003100340037003400380033003600340035_DDD_L_LBI4T0
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_4___gen__gdProducts__ProductClassCode__002D0032003100340037003400380033003600340035_DDD_L_LBI4T0
    sleep  2s
    click element  id =ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_7___gen__gdProducts__Weight__002D0032003100340037003400380033003600340035_B-2
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_8___gen__gdProducts__Length__002D0032003100340037003400380033003600340035_B-2
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_9___gen__gdProducts__Width__002D0032003100340037003400380033003600340035_B-2
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_10___gen__gdProducts__Height__002D0032003100340037003400380033003600340035_B-2
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_11___gen__gdProducts__DimUnit__002D0032003100340037003400380033003600340035_B-1
    sleep  2s
    wait until page contains element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_11___gen__gdProducts__DimUnit__002D0032003100340037003400380033003600340035_DDD_L_LBI1T0
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_11___gen__gdProducts__DimUnit__002D0032003100340037003400380033003600340035_DDD_L_LBI1T0
    capture page screenshot
Insert Shipment Products LTL
    Select Window   MAIN
    wait until page contains element    xpath=//*[@id="ctl05_ucShipmentEntryControl_rpProducts_HTC_hlProducts"]
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_HTC_hlProducts
    sleep  5s
    wait until page contains element   xpath= //*[@id="ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_5___gen__gdProducts__Quantity__002D0032003100340037003400380033003600340035_B-2"]
    click element   xpath= //*[@id="ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_5___gen__gdProducts__Quantity__002D0032003100340037003400380033003600340035_B-2"]
    wait until page contains element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_4___gen__gdProducts__ProductClassCode__002D0032003100340037003400380033003600340035_B-1
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_4___gen__gdProducts__ProductClassCode__002D0032003100340037003400380033003600340035_B-1
    sleep  2s
    wait until page contains element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_4___gen__gdProducts__ProductClassCode__002D0032003100340037003400380033003600340035_DDD_L_LBI4T0
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_4___gen__gdProducts__ProductClassCode__002D0032003100340037003400380033003600340035_DDD_L_LBI4T0
    sleep  2s
    click element  id =ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_7___gen__gdProducts__Weight__002D0032003100340037003400380033003600340035_B-2
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_8___gen__gdProducts__Length__002D0032003100340037003400380033003600340035_B-2
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_9___gen__gdProducts__Width__002D0032003100340037003400380033003600340035_B-2
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_10___gen__gdProducts__Height__002D0032003100340037003400380033003600340035_B-2
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_11___gen__gdProducts__DimUnit__002D0032003100340037003400380033003600340035_B-1
    sleep  2s
    wait until page contains element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_11___gen__gdProducts__DimUnit__002D0032003100340037003400380033003600340035_DDD_L_LBI1T0
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_11___gen__gdProducts__DimUnit__002D0032003100340037003400380033003600340035_DDD_L_LBI1T0
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_deTotalHandlingUnits_B-2
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_3___gen__gdProducts__ProductShippedID__002D0032003100340037003400380033003600340035_B-1
    sleep  2s
    wait until page contains element   id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_3___gen__gdProducts__ProductShippedID__002D0032003100340037003400380033003600340035_DDD_L_LBI1T0
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_3___gen__gdProducts__ProductShippedID__002D0032003100340037003400380033003600340035_DDD_L_LBI1T0
    sleep  2s

    capture page screenshot
Insert Additional Information
    click element   id=ctl05_ucShipmentEntryControl_rpAdditionalInfo_HTC_hlAdditionalInfo
    sleep  2s
    input text      id=ctl05_ucShipmentEntryControl_rpAdditionalInfo_pnlAdditionalInfo_edSONumbers_I    123456
    input text      id=ctl05_ucShipmentEntryControl_rpAdditionalInfo_pnlAdditionalInfo_edPONumbers    987654
    input text      id=ctl05_ucShipmentEntryControl_rpAdditionalInfo_pnlAdditionalInfo_edJobNumbers_I   654123
    capture page screenshot
Carrier
    click element  id=ctl05_ucShipmentEntryControl_rpCarrier_HTC_hlCarrier
    click element  id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_btGetRate_B
    sleep  10s
    select frame    id=pcMain_CIF-1
    sleep  2s
    click element   id=ctl05_ucGrid_dxGrid_DXSelBtn3_D
    click element   id=ctl05_ucGrid_ucButtonPanel_btContinue_B
    Select Window   MAIN
    input text   id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_edPRONumber_I  894561
    capture page screenshot
Carrier LT
    click element  id=ctl05_ucShipmentEntryControl_rpCarrier_HTC_hlCarrier
    wait until page contains element   id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_cbCarrierID_B-1
    click element   id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_cbCarrierID_B-1
    sleep  2s
    wait until page contains element   id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_cbCarrierID_DDD_L_LBI3T0
    click element   id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_cbCarrierID_DDD_L_LBI3T0
    sleep  2s
    input text   id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_edPRONumber_I   894561
    Select Checkbox   id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_cxDisclaimer
    capture page screenshot
Equipment and Accessories
    click element  id=ctl05_ucShipmentEntryControl_rpEquipment_HTC_hlEquipment
    select radio button  ctl05$ucShipmentEntryControl$rpEquipment$pnlEquipment$rbRFQEquipmentTypeID  10
    select checkbox  id=ctl05_ucShipmentEntryControl_rpEquipment_pnlEquipment_gdRFQAccessories_dxGrid_cell4_0___gen__gdRFQAccessories__Selected__00320030
    capture page screenshot
Finish/Print
    click element   id=ctl05_ucShipmentEntryControl_btCreateBOL_B
    sleep  2s
    capture page screenshot