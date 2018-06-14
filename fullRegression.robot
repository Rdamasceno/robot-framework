*** Settings ***
Documentation     Automation of blims client site using SeleniumLibrary level 3 regression.


Resource  C:/development/robot-scripts/test - Copy/Resources/blims.robot
Resource  C:/development/robot-scripts/test - Copy/Resources/Common.robot


Test Setup     Begin Web test
Test Teardown  End Web test
*** Variables ***
@{login}=  RPRIESTHWC1  Broussard2  RPRIESTtryc  RPRIESTacem  RPRIESTWPII  RPRIESTTSUC


*** Test Cases ***
1) CS.SH.010.10 Carrier quote history

    [Documentation]  Verify that an Acem user is able to create shipment accordingly.
    [Tags]  Current
    Enter login information WPII
    Carrier quote history WP
2) CS.SH.200.10.150 Search RFQ created
    [Documentation]  Verify that a user with valid data is able to request for quote for TL/Volume shipment
    [Tags]  Current
     blims.Enter login information
     Create LT/Volume Shipment
     Enter Shipment data
        Insert address
        Insert Shipment Products LTL
        Insert Additional Information
        Equipment and Accessories
        Request For Quote (RFQ)
        Result of RFQ

3) CS.SH.200.10.200 Obtain Shipment Tracking in Excel Sheet format (Individual Quick Search)

        [Documentation]  Verify that an TRYC user is able to create shipment accordingly.
        [Tags]  headless


        Enter login information TRYC
        Create Standard LTL Shipment
        Enter Shipment data
             Insert address tryc
             Insert Shipment Products LTL
             Insert Additional Information
             Carrier
             Carrier Notification
        Finish/Print
        Individual Quick Search

4) CS.OT.100.10 Verify the FaceBook icon
         [Documentation]  Verify that a user is able to share the site via social media button of facebook
        [Tags]  Current
        Enter login information WPII
        Click on Facebook icon

5) CS.OT.100.20 Verify the LinkedIn icon
        [Documentation]  Verify that a user is able to share the site via social media button of LinkedIn
        [Tags]  Current
        Enter login information WPII
        Click on LinkedIn icon

6) CS.OT.100.30 Verify the Twitter icon
        [Documentation]  Verify that a user is able to share the site via social media button of Twitter
        [Tags]  Current
        Enter login information WPII
        Click on Twitter icon
7) CS.OT.100.40 Verify the icon to share it via E-mail
        [Documentation]  Verify that a user is able to share the site via social media button of E-mail
        [Tags]  Current

        Enter login information WPII
        Click on Tell a Friend about this Site icon

8) CS.OT.200.10 Verify the function of log out button
        [Documentation]  Verify that a user is able to log out from the site successfully
        [Tags]  Current
         Enter login information WPII
         logout link
9) CS.OT.200.20 Verify the function of Account Specialist button
        [Documentation]   Verify that a user can email to Account Specialist
         [Tags]  Current
          Enter login information WPII
          Click on Account Specialist

10) CS.OT.200.30 Verify the function of Website Support button
        [Documentation]   Verify that a user can email to Website Support
        [Tags]  Current
          Enter login information WPII
          Click on Website Support

11) CS.OT.200.40 Verify the function of tips and training button
         [Documentation]   Verify that a user can see the tips and get trained
        [Tags]  Current
         Enter login information WPII
         Click on Tips and Training
12) CS.OT.300.10 Verify the function of drop down list of clients and CS.OT.400 Verify the work of drop down list of Location
         [Documentation]   Verify that a user is able to use the drop down list of clients
         [Tags]  Current
         Enter login information WPII
         Click on Client
         Click on location

13) CS.OT.500 Verify the work of Site Search
         [Documentation]   Verify that a registered user is able to use properly the site search
         [Tags]  Current
         Enter login information WPII
         Click on header search

14) CS.SA.300.10.10 Obtain Sales Quote
         [Documentation]   Verify that a user with valid data is able to get sales quote based on the specific
         [Tags]  Current
         Enter login information WPII
         Click on Sale Tab
         insert Origin Zip
         insert Destination Zip
         blims.Set Class WP
         blims.Set Weight WP
         click on get rate
15) CS.SA.300.10.30 Obtain Shipment Tracking in Excel Sheet Format (In Transit/Delivered)
          [Documentation]   Verify that a user with valid data is able to track shipments which are still in transit/ have been delivered and have the info in Excel Sheet format
         [Tags]  headless
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
        In Transit/Delivered

16) CS.SA.300.10.70 Create New Sales Quotes
             [Documentation]    Verify that a user with valid data is able to create new sales quotes according to their specific requirements
              [Tags]  Current
           Enter login information WPII
             Click on Sale Tab
             Click on NewSalesQuote
             Terms & Address Information
             Product Information
             Find a Carrier

17) CS.SA.300.10.100 Create an Invoice
               [Documentation]    Verify that a user with valid data is able to create an invoice based on the completed shipments info
              [Tags]  Current
              Enter login information WPII
             Click on Sale Tab
             Click on Create Invoice
             Click on BOL Number
             Click on CreateInvoice button

18) CS.RP.020.10 Create Invoice From Shipment
                [Documentation]    Verify that a user with valid data is able to create an Invoice from a Shipment
                [Tags]  Current
                  Enter login information WPII
                  report tab
                  Click on Report CreateInvoice
                  Click on BOL Number
                 Click on CreateInvoice button
19) CS.RP.400.10.50 View Site Usage
                [Documentation]  Verify that a user with valid data is able to view and monitor the site usage in Excel Sheet format
                [Tags]  Current
                Enter login information WPII
                  report tab
                  Click on site Usage
                  Click on Report Export
20) CS.RP.400.10.60 Print Site Usage
                [Documentation]  Verify that a user with valid data is able to print the site usage info
                [Tags]  Current
                Enter login information WPII
                 report tab
                 Click on site Usage
                 Print site Usage

21) CS.RP.400.10.70 View Carrier Rate Quotes Requested
                [Documentation]  Verify that a user with valid data is able to view carrier rate quotes requested in Excel Sheet format
                [Tags]  Current
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
         report tab
         Click on Carrier rate quotes requested
         CARRIER RATE QUOTES REQUESTED Set date
        Click on CARRIER RATE QUOTES REQUESTED Report Export

22) CS.RP.030.10 View created shipments and export the info to excel file
                [Documentation]  Verify that a user with valid data is able to View created shipments and export the info to excel file

                [Tags]  Current
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
         report tab
         Click on Shipment created
         CARRIER RATE QUOTES REQUESTED Set date
         Click on CARRIER RATE QUOTES REQUESTED Report Export

23) CS.RP.030.20 View created shipments and print them
                [Documentation]  Verify that a user with valid data is able to View created shipments and print them
                [Tags]  Current
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
         report tab
         Click on Shipment created
         CARRIER RATE QUOTES REQUESTED Set date
         Print site Usage
24) CS.RP.400.10.120 Print Analytics and CS.RP.400.10.120 Print Analytics
                [Documentation]  Verify that a user with valid data is able to print analytics in Totals, Outbound, Inbound, Transfers and Other
                [Tags]  Current
                  Enter login information WPII
                 report tab
                 Click on Analytics

25) CS.AC.500.10.20 View Year To Date Freight Bills, Amount Paid and Total Savings
         [Documentation]  Review the the Freight Bills, Amount Paid and Total Savings values
                [Tags]  Current

                Enter login information WPII
                ACCOUNTING


26) CS.AC.02.03 On Hold Freight Bill and CS.AC.02.50 Open Resolve Freight Bill
    [Documentation]   Verify that user is able to on hold the respective freight bills on client site
    [Tags]   Current


    Enter login information HWC1
    ACCOUNTING
    Freight Bills On Hold
    Resolve
    Keep On Hold

27) CS.AC.02.02 Reject Freight Bill
    [Documentation]   Verify that user is able to reject the respective freight bills on client site
    [Tags]   Current

    Enter login information HWC1
    ACCOUNTING
    Freight Bills On Hold
    Resolve
    Reject
28) CS.AC.02.01 Approve Freight Bill
    [Documentation]   Verify that user is able to approve the respective freight bills on client site
    [Tags]   Current

    Enter login information HWC1
    ACCOUNTING
    Freight Bills On Hold
    Resolve
    Approve


29) CS.AC.02.40 Email freight bill info
    [Documentation]   Verify that a registered user is able to email freight bill info
    [Tags]   Current

    Enter login information HWC1
    ACCOUNTING
    Freight Bills On Hold
    Resolve
    Click on Email Freight Bill info
     Email freight bill info



30) CS.AD.600.10.40 Add Shipment Products Info

    [Documentation]   Verify that a user with valid data is able to add new shipment products info
    [Tags]   Smoke
     Enter login information HWC1
    Click on Products
     Add product



