*** Settings ***
Library  SeleniumLibrary
*** Variables ***
@{login}=  RPRIESTHWC1  Broussard2  RPRIESTtryc  RPRIESTacem  RPRIESTWPII  RPRIESTTSUC

*** Keywords ***
Click on Carrier section
    click element  id=ctl05_ucShipmentEntryControl_rpCarrier_HTC_hlCarrier

Click on Get Carrier Rate Quotes Button
    click element  id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_btGetRate_B
    sleep  10s
    select frame    id=pcMain_CIF-1
    sleep  8s
Set PRO Number
     input text   id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_edPRONumber_I  894561
Carrier field
    wait until page contains element   id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_cbCarrierID_B-1
    click element   id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_cbCarrierID_B-1
Set FREIGHT COWBOY as carrier
    wait until page contains element   id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_cbCarrierID_DDD_L_LBI12T0
    click element   id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_cbCarrierID_DDD_L_LBI12T0

Tick on the Carrier Disclaimer checkbox
     Select Checkbox   id=ctl05_ucShipmentEntryControl_rpCarrier_pnlCarrier_cxDisclaimer
Click on Continue
    click element   id=ctl05_ucGrid_ucButtonPanel_btContinue_B

Select a carrier from results
    wait until page contains element   id=ctl05_ucGrid_dxGrid_DXSelBtn1_D  timeout=10
    click element   id=ctl05_ucGrid_dxGrid_DXSelBtn1_D