*** Settings ***
Documentation     Simple example using SeleniumLibrary.

Resource  /development/robot-scripts/Project/amazon/Resources/blims.robot
Resource  /development/robot-scripts/Project/amazon/Resources/Common.robot

Test Setup  Begin Web test
Test Teardown  End Web test
*** Variables ***

*** Test Cases ***
1)User should be be able to get a Rate Shop quote
    [Documentation]  This is some basic information about the test
    [Tags]  Current

    blims.Enter login information
    blims.Enter rate shop information
    blims.Print results
2)Create a Shipment Quote/ BOL for Parcel Documents Shipment
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke


     blims.Enter login information
     Create Parcel Document Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products
        Insert Additional Information
        Carrier
     Finish/Print
3)Create Parcel boxes less than 150lb Shipment
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke

     blims.Enter login information
     Create Parcel boxes less than 150lb Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products
        Insert Additional Information
        Carrier
     Finish/Print
4)Create Standard LTL Shipment
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke

     blims.Enter login information
     Create Standard LTL Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products LTL
        Insert Additional Information
        Carrier
     Finish/Print
5)Create LT/Volume Shipment
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
     blims.Enter login information
     Create LT/Volume Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products LTL
        Insert Additional Information
        Carrier LT
        Equipment and Accessories
     Finish/Print
6)Create Hot Shot/Local shipment
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
     blims.Enter login information
     Create LT/Volume Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products LTL
        Insert Additional Information
        Carrier LT
        Equipment and Accessories
     Finish/Print
7)Report BOLDataExchange with Invoice
   [Documentation]  This is some basic information about the test
    [Tags]  Smoke
    blims.Enter login information
    report tab
      Report list
      Report BOL Data Exchange-invoice
      Export to Excel
8)Report BOLDataExchane with Projected Ship Date
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
    blims.Enter login information
    report tab
      Report list
      Report BOL Data Exchange-Projected Ship Date
      Export to Excel
9)Report BOLDataExchane with Actual Ship Date
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
    blims.Enter login information
    report tab
      Report list
      Report BOL Data Exchange-Actual Ship Date
      Export to Excel
10)Report Raw Data-Invoice
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
         blims.Enter login information
         report tab
         click on Report raw data
         Report raw data -Invoice
         click on export to excel
11)Report Raw Data-Date
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
        blims.Enter login information
        report tab
        click on Report raw data
        Report raw data -Date
        click on export to excel
12)Report Parcel Raw Data -Invoice
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
    blims.Enter login information
    report tab
    click on Parcel Raw Data
    Report raw data -Invoice
    click on export to excel
13)Report Parcel Raw Data -Date
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
         blims.Enter login information
         report tab
         click on Parcel Raw Data
         Report raw data -Date
         click on export to excel

