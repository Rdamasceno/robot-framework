*** Settings ***
Documentation     Automation of blims client site using SeleniumLibrary level 1 regression.

Resource  C:/development/robot-scripts/test - Copy/Resources/blims.robot
Resource  C:/development/robot-scripts/test - Copy/Resources/Common.robot


Test Setup     Begin Web test
Test Teardown  End Web test
*** Variables ***

*** Test Cases ***
     #### Rate Shop ####
1) CS.SH.050.130 HWC1 Rate Shop Error
    [Documentation]  This test case is the verify the error message for any shipment product over 5000 weight
    [Tags]   Smoke

    blims.Enter login information
    blims.Enter rate shop information
    blims.Print results
    #### Create Shipment ####
2) CS.SH.200.10.30 Create a Shipment Quote/ BOL for Parcel Documents
    [Documentation]  This test case creates a Parcel document shipment
    [Tags]   Smoke

     blims.Enter login information
     Create Parcel Document Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products
        Insert Additional Information
        Carrier
     Finish/Print
3) CS.SH.200.10.40 Create a Shipment Quote/ BOL for Parcel Boxes Less Than 150lb
    [Documentation]  This test case creates a Parcel boxes less than 150lb shipment
    [Tags]   Smoke

     blims.Enter login information
     Create Parcel boxes less than 150lb Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products
        Insert Additional Information
        Carrier
     Finish/Print
4) CS.SH.200.10.50 Finish/Print Shipment Quote/ BOL for Standard LTL
    [Documentation]  This test case creates a LTL shipment with pick up request
    [Tags]  Smoke

     blims.Enter login information
     Create Standard LTL Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products LTL
        Insert Additional Information
        Carrier
        Carrier Notification
        Finish/Print
5) CS.SH.200.10.80 Create a Shipment Quote/ BOL for TL/Volume
    [Documentation]  This test case creates a LT shipment with Email Bol option
    [Tags]  Smoke
     blims.Enter login information
     Create LT/Volume Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products LTL
        Insert Additional Information
        Carrier LT fix
        Equipment and Accessories
      Finish/Print
6) SH.BI.020.30 Verify a Pickup Request in the Client Site
    [Documentation]  This test case creates a LTL shipment with pick up request
    [Tags]  Smoke

     blims.Enter login information
     Create Standard LTL Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products LTL
        Insert Additional Information
        Carrier
        Carrier Notification
        Finish/Print
        Verify the pickup request
7) CS.SH.200.10.60 Email a Shipment Quote/ BOL for Standard LTL
    [Documentation]  This test case creates a LT shipment with Email Bol option
    [Tags]  Smoke

     blims.Enter login information
     Create Standard LTL Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products LTL
        Insert Additional Information
        Carrier
     Click on Email BOL
     Enter email
8) CS.SH.200.10.70 Print BOL & Labels for Standard LTL
     [Documentation]  Verify that a user with valid data is able to create a shipment for Standard LTL
     [Tags]  Smoke
     blims.Enter login information
     Create Standard LTL Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products LTL
        Insert Additional Information
        Carrier
        Carrier Notification
     Print BOL & Labels
9) CS.SH.130.50 Hot Shot Shipment Tender to FC
    [Documentation]  This test case creates a hot shot shipment
    [Tags]  Smoke
     blims.Enter login information
     Create LT/Volume Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products LTL
        Insert Additional Information
        Carrier LT fix
        Equipment and Accessories
     Finish/Print
     #### Report Tab ####
10) CS.RP.040.20 Customising a BOL Data Exchange Report for excel by Invoice#
   [Documentation]  This test case creates a Bol Data Exchange report with Invoice field
    [Tags]  Smoke
    blims.Enter login information
    report tab
      Report list BOL Data Exchange
      Report BOL Data Exchange-invoice
      Export to Excel
11) CS.RP.040.10 Create a BOL Data Exchange Report for excel

    [Documentation]  This test case creates a Bol Data Exchange report with Projected Ship Date field
    [Tags]  Smoke
    blims.Enter login information
    report tab
      Report list BOL Data Exchange
      Report BOL Data Exchange-Projected Ship Date
      Export to Excel
12) CS.RP.040.40 Customising a BOL Data Exchange Report for excel by Actual Data Range
    [Documentation]  This test case creates a Bol Data Exchange report with Actual Ship Date field
    [Tags]  Smoke
    blims.Enter login information
    report tab
      Report list BOL Data Exchange
      Report BOL Data Exchange-Actual Ship Date
      Export to Excel
13) CS.RP.010.10 Create a Raw Data Report for excel
    [Documentation]  Verify that a user with valid data is able to view and generate reports with Invoice field
    [Tags]  Smoke
         blims.Enter login information
         report tab
         click on Report raw data
         Report raw data -Invoice
         click on export to excel
14) CS.RP.010.20 Customising a Raw Data Report for excel
    [Documentation]  Verify that a user with valid data is able to view and generate reports
    [Tags]  Smoke
        blims.Enter login information
        report tab
        click on Report raw data
        Report raw data -Date
        click on export to excel
15) CS.RP.010.40 Create a Parcel Raw Data Report for excel
    [Documentation]  Verify that a user with invoice is able to view and generate reports
    [Tags]  Smoke
        blims.Enter login information
         report tab
         click on Parcel Raw Data
         Report raw data -Invoice
         click on export to excel
16) CS.RP.010.30 Customising a Parcel Raw Data Report for excel
    [Documentation]  Verify that a user with valid data is able to view and generate reports
   [Tags]  Smoke
         blims.Enter login information
         report tab
         click on Parcel Raw Data
         Report raw data -Date
         click on export to excel
17) CS.SH.200.10.90 Request for Quote (RFQ) for TL/Volume Shipment
    [Documentation]  Verify that a user with valid data is able to request for quote for TL/Volume shipment
    [Tags]  Smoke
     blims.Enter login information
     Create LT/Volume Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products LTL
        Insert Additional Information
        Equipment and Accessories
        Request For Quote (RFQ)
18) CS.SH.050.10 Create a rate shop report
       [Documentation]  Verify the report is not showing empty columns
        [Tags]  Smoke
         blims.Enter login information
         Enter normal rate shop information
          Rate quote product
         Get Rates
         Print Rate Shop report
19)CS.SH.050.20 Create a rate shop report with accessorials
         [Documentation]  Verify the report is not showing empty columns and is showing accessorials without the popup screen
         [Tags]  Smoke
         blims.Enter login information
         Any accessorials
         Enter normal rate shop information
         Rate quote product
         Any accessorials
         Get Rates
         Print Rate Shop report
20)CS.SH.050.40 Unable to Create Shipment from Rate Shop results
         [Documentation]  Verify the shipment cannot be created from the Rate Shop results if Carrier is not selected
         [Tags]  Smoke
         blims.Enter login information
         Rate quote product
         Any accessorials
         Address Book
         Get Rates
         Create BOL
21)CS.SH.050.50 Create Shipment from Rate Shop results

         [Documentation]  Verify the shipment cannot be created from the Rate Shop results if Carrier is not selected
         [Tags]  Smoke
         blims.Enter login information
         Rate quote product
         Any accessorials
         Address Book
         Get Rates
         Select carrier from rateshop
         Create BOL
         Insert Product
         Insert Additional Information
         Carrier rate
         Finish/Print
22) CS.SH.050.60 Create Rate Shop with LTL Transportation Mode
        [Documentation]  Verify the shipment cannot be created from the Rate Shop results if Carrier is not selected
         [Tags]  Smoke
         blims.Enter login information
         Transportation Mode
         Rate quote product
         Any accessorials
         Enter normal rate shop information
         Get Rates
23) CS.SH.050.70 Create Rate Shop with Parcel Transportation Mode
        [Documentation]  Verify the shipment cannot be created from the Rate Shop results if Carrier is not selected
         [Tags]  Smoke
         blims.Enter login information
         Transportation Mode Parcel
         Rate quote product
         Enter normal rate shop information
         Get Rates
24) CS.SH.070.10 Make sure the drop down list is including all results in the list for all locations
          [Documentation]  This test case is the verify the error message for any shipment product over 5000 weight
          [Tags]  Smoke

           blims.Enter login information
           Shipment Tracking
           Search Criteria
           Verify Result
25) CS.SH.100.10 Create Shipment for TRYC User
        [Documentation]  Verify that an TRYC user is able to create shipment accordingly.
        [Tags]  Smoke

        Enter login information TRYC
        Create Standard LTL Shipment
        Enter Shipment data
             Insert address tryc
             Insert Shipment Products LTL
             Insert Additional Information
             Carrier
             Carrier Notification
        Finish/Print
26) CS.SH.100.30 Create Shipment for ACEM User

        [Documentation]  Verify that an Acem user is able to create shipment accordingly.
        [Tags]  Smoke

         Enter login information ACEM
        Create Standard LTL Shipment
        Enter Shipment data
             Insert address
             Insert Shipment Products LTL
             Insert Additional Information Acem
             Carrier
             Carrier Notification
        Finish/Print
27) CS.SH.100.40 Create Shipment for TSUC User and CS.SH.100.50 Account Code Rules for TSUC User
        [Documentation]  Verify that an TSUC user is able to create shipment accordingly.
        [Tags]  Smoke

         Enter login information TSUC
        Create Standard LTL Shipment
        Enter Shipment data
             Insert address
             Insert Shipment Products LTL
             Shipment Codes
             Insert Additional Information TSUC
             Carrier TSUC
             Carrier Notification
        Finish/Print
28) CS.SH.130.20 Account Code Masks Function and CS.SH.130.10 Create Shipment for WP User
        [Documentation]  Verify that when a WP user types in the Accounting Code field, it should restrict it to the mask that is setup
        [Tags]  Smoke

         Enter login information WPII
        Create Standard LTL Shipment
        Enter Shipment data
             Insert address WP
             Insert Shipment Products WP
             Shipment Codes WP
             Insert Additional Information
             Carrier
             Carrier Notification
        Finish/Print
29) CS.CL.20 Carrier Site Check No. for SAIA user
   [Documentation]  Verify that a user is able to see the check for an specific Freight Bill by clicking on its Check No.
   [Tags]  current
      Enter login information Saia
      SEARCH CRITERIA SAIA
      Click on Checks
      Print Checks
      Click on Checks 2
      Print Checks
30) CS.SH.050.150 HWC1 Sales Rate Shop Error
    [Documentation]  This test case is the verify the error message for any shipment product over 5000 weight
    [Tags]   Smoke

    blims.Enter login information HWC1
    SALES
    Enter rate shop information
    Print results
31) CS.SH.050.140 HWC1 Sales Rate Shop
    [Documentation]  This test case is the verify the error message for any shipment product less than 5000 weight
    [Tags]   Smoke

    blims.Enter login information HWC1
    SALES
    Enter rate shop information less 5000
    Print results
32) CS.AC.02.01 Approve Freight Bill
    [Documentation]   Verify that user is able to approve the respective freight bills on client site
    [Tags]   Smoke

    Enter login information HWC1
    ACCOUNTING
    Freight Bills On Hold
    Resolve
    Approve
33) CS.AC.02.02 Reject Freight Bill
    [Documentation]   Verify that user is able to reject the respective freight bills on client site
    [Tags]   Smoke

    Enter login information HWC1
    ACCOUNTING
    Freight Bills On Hold
    Resolve
    Reject
34) CS.AC.02.03 On Hold Freight Bill
    [Documentation]   Verify that user is able to on hold the respective freight bills on client site
    [Tags]   Smoke


    Enter login information HWC1
    ACCOUNTING
    Freight Bills On Hold
    Resolve
    Keep On Hold
35) CS.SH.070.10 Make sure the drop down list is including all results in the list for all locations
    [Documentation]   verify data for carriers is being displayed correctly
    [Tags]   Smoke

    Enter login information
    Shipment Tracking
    carrier dropdown in tracking
    Tracking search
    tracking result
36) CS.SH.070.20 Make sure the drop down list is including all results in the list for the location you currently are
    [Documentation]   verify data for carriers is being displayed correctly
    [Tags]   Smoke

    Enter login information
    Shipment Tracking
    carrier dropdown in tracking
    uncheck all location
    Tracking search
    tracking result
37) CS.SH.050.160 HWC1 Shipment Entry Rate Shop
    [Documentation]  Verify that If the user does a rate shop that is not over the limit (less than 5000 lbs), rate shop should be successful without any error
    [Tags]  Smoke

         blims.Enter login information
         Rate quote product
         Any accessorials
         Address Book
         Get Rates
         Select carrier from rateshop
         Create BOL
         Insert Product
         Insert Additional Information
         Carrier
         Finish/Print
38) CS.SH.050.170 HWC1 Shipment Entry Rate Shop Error from Shipment Entry
        [Documentation]  Verify that If the user does a rate shop that is not over the limit (less than 5000 lbs), rate shop should be successful without any error
         [Tags]  Smoke


        blims.Enter login information
        Rate quote product for shipment
         Any accessorials
         Address Book
         Get Rates
         Select carrier from rateshop
         Create BOL
         Insert Product
         Insert Additional Information
         Carrier 2
39) CS.SH.050.120 HWC1 Rate Shop
    [Documentation]  This test case is the verify the error message for any shipment product over 5000 weight
    [Tags]   Smoke

        blims.Enter login information
        Enter rate shop information less 5000
        blims.Print results


