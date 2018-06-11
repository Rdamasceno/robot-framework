*** Settings ***
Library  SeleniumLibrary
*** Variables ***
@{login}=  RPRIESTHWC1  Broussard2  RPRIESTtryc  RPRIESTacem  RPRIESTWPII  RPRIESTTSUC

*** Keywords ***

Go to Shipments Tab
    Wait Until Page Contains Element  id=ucMenu_ucShipping_imIcon    timeout=10
    Click Element    id=ucMenu_ucShipping_imIcon

Click on Shipment Products section
        wait until page contains element    xpath=//*[@id="ctl05_ucShipmentEntryControl_rpProducts_HTC_hlProducts"]
        click element  id=ctl05_ucShipmentEntryControl_rpProducts_HTC_hlProducts
Set Class
    wait until page contains element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_4___gen__gdProducts__ProductClassCode__002D0032003100340037003400380033003600340035_B-1
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_4___gen__gdProducts__ProductClassCode__002D0032003100340037003400380033003600340035_B-1
    sleep  2s
    wait until page contains element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_4___gen__gdProducts__ProductClassCode__002D0032003100340037003400380033003600340035_DDD_L_LBI4T0
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_4___gen__gdProducts__ProductClassCode__002D0032003100340037003400380033003600340035_DDD_L_LBI4T0
Set Piece Count
    wait until page contains element   xpath= //*[@id="ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_5___gen__gdProducts__Quantity__002D0032003100340037003400380033003600340035_B-2"]
    click element   xpath= //*[@id="ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_5___gen__gdProducts__Quantity__002D0032003100340037003400380033003600340035_B-2"]
Set Weight
   click element  id =ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_7___gen__gdProducts__Weight__002D0032003100340037003400380033003600340035_B-2
Set Length
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_8___gen__gdProducts__Length__002D0032003100340037003400380033003600340035_B-2
Set Width
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_9___gen__gdProducts__Width__002D0032003100340037003400380033003600340035_B-2
Set Height
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_10___gen__gdProducts__Height__002D0032003100340037003400380033003600340035_B-2
Set Units
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_11___gen__gdProducts__DimUnit__002D0032003100340037003400380033003600340035_B-1
    wait until page contains element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_11___gen__gdProducts__DimUnit__002D0032003100340037003400380033003600340035_DDD_L_LBI1T0  timeout=10
	sleep  1s
    click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_11___gen__gdProducts__DimUnit__002D0032003100340037003400380033003600340035_DDD_L_LBI1T0
Set Total Handling Units
        click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_deTotalHandlingUnits_B-2
Set Product Shipped
     click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_3___gen__gdProducts__ProductShippedID__002D0032003100340037003400380033003600340035_B-1
     wait until page contains element   id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_3___gen__gdProducts__ProductShippedID__002D0032003100340037003400380033003600340035_DDD_L_LBI1T0  timeout=10
	 sleep  1s
     click element  id=ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_3___gen__gdProducts__ProductShippedID__002D0032003100340037003400380033003600340035_DDD_L_LBI1T0
Set Package Type
    click image    ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_6___gen__gdProducts__UOMID__002D0032003100340037003400380033003600340035_B-1Img
    wait until page contains element     xpath=//*[@id="ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_6___gen__gdProducts__UOMID__002D0032003100340037003400380033003600340035_DDD_L_LBI0T0"]  timeout=10
    sleep  1s
	click element   xpath=//*[@id="ctl05_ucShipmentEntryControl_rpProducts_pnlProducts_gdProducts_dxGrid_cell0_6___gen__gdProducts__UOMID__002D0032003100340037003400380033003600340035_DDD_L_LBI0T0"]
Click on Additional Information section
     click element   id=ctl05_ucShipmentEntryControl_rpAdditionalInfo_HTC_hlAdditionalInfo
Click on Shipment Codes section
    click element  id= ctl05_ucShipmentEntryControl_rpShipmentCodes_HTC_hlShipmentCodes
Click on Carrier Notification section
    click element   id=ctl05_ucShipmentEntryControl_rpCarrierNotifications_HTC_hlCarrierNotifications

Set Expected Ship Date
    click image   id=ctl05_ucShipmentEntryControl_rpCarrierNotifications_pnlCarrierNotifications_deExpectedShipDate_B-1Img
    sleep  1s
    wait until page contains element  xpath =//*[@id="ctl05_ucShipmentEntryControl_rpCarrierNotifications_pnlCarrierNotifications_deExpectedShipDate_DDD_C_mt"]/tbody/tr[6]/td[7]
    click element   xpath =//*[@id="ctl05_ucShipmentEntryControl_rpCarrierNotifications_pnlCarrierNotifications_deExpectedShipDate_DDD_C_mt"]/tbody/tr[6]/td[7]

Set Sales Order
    input text      id=ctl05_ucShipmentEntryControl_rpAdditionalInfo_pnlAdditionalInfo_edSONumbers_I    123456
Set Purchase Order
    input text      id=ctl05_ucShipmentEntryControl_rpAdditionalInfo_pnlAdditionalInfo_edPONumbers    987654
Set Location Code
    click image      id= ctl05_ucShipmentEntryControl_rpAdditionalInfo_pnlAdditionalInfo_cbExtraLocationID_B-1Img
    sleep  2s
    wait until page contains element  xpath =//*[@id="ctl05_ucShipmentEntryControl_rpAdditionalInfo_pnlAdditionalInfo_cbExtraLocationID_DDD_L_LBI1T0"]
    click element   xpath =//*[@id="ctl05_ucShipmentEntryControl_rpAdditionalInfo_pnlAdditionalInfo_cbExtraLocationID_DDD_L_LBI1T0"]
Set Job Number
    input text      id=ctl05_ucShipmentEntryControl_rpAdditionalInfo_pnlAdditionalInfo_edJobNumbers_I   654123
Set Account Number
    click image         ctl05_ucShipmentEntryControl_rpAdditionalInfo_pnlAdditionalInfo_cbAccountNumber_B-1Img
    sleep  2s
    wait until page contains element  xpath =//*[@id="ctl05_ucShipmentEntryControl_rpAdditionalInfo_pnlAdditionalInfo_cbAccountNumber_DDD_L_LBI1T0"]
    click element   xpath =//*[@id="ctl05_ucShipmentEntryControl_rpAdditionalInfo_pnlAdditionalInfo_cbAccountNumber_DDD_L_LBI1T0"]
Set Line of Business
    click image       ctl05_ucShipmentEntryControl_rpAdditionalInfo_pnlAdditionalInfo_cbLOBCode_B-1Img
    sleep  5s
    click element        ctl05_ucShipmentEntryControl_rpAdditionalInfo_pnlAdditionalInfo_cbLOBCode_DDD_L_LBI1T0
Set Customer Name (TSUC)
    input text       ctl05$ucShipmentEntryControl$rpAdditionalInfo$pnlAdditionalInfo$edApprovedBy    Raphael


Click on the Finish/Print
    click element   id=ctl05_ucShipmentEntryControl_btCreateBOL_B
    sleep  1s