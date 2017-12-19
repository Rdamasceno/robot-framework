*** Settings ***
Documentation   A resource file with reusable keywords and variables.
Library  Collections
Library  HttpLibrary.HTTP
Library  String

*** Variables ***
${SCHEME}   https
${TEST_HOST}   cla-millbrook-proxy.zatar.com
${SCHEME_HOST}   ${SCHEME}://${TEST_HOST}
${TEST_SCHEME_HOST}   ${SCHEME}://${TEST_HOST}

*** Keywords ***

Setup Context
    Create HTTP Context   ${TEST_HOST}    ${SCHEME}
    Set Request Header   Content-Type    application/json;

Success Call
    [Arguments]   ${method}   ${uri}   ${response_code}   ${payload}=
    Log Many   ${method}   ${uri}   ${payload}
    Set Request Body   ${payload}
    Run Keyword And Continue on Failure   ${method}   ${uri}
    Log Response Status
    Log Response Body
    Response Status Code Should Equal   ${response_code}
    ${body}=  Get Response Body
    Return From Keyword   ${body}

Success Call Context
    [Arguments]   ${method}   ${uri}   ${response_code}   ${payload}=
    Setup Context
    Log Many   ${method}   ${uri}   ${payload}
    Set Request Body   ${payload}
    Run Keyword And Continue on Failure   ${method}   ${uri}
    Log Response Status
    Log Response Body
    Response Status Code Should Equal   ${response_code}
    ${body}=  Get Response Body
    Return From Keyword   ${body}


Failure Call
    [Arguments]         ${method}       ${uri}          ${response_code}  ${payload}=
    Log Many   ${method}   ${uri}   ${payload}
    Set Request Body   ${payload}
    Run Keyword And Ignore Error   ${method}   ${uri}
    Log Response Status
    Log Response Body
    Response Status Code Should Equal   ${response_code}
    ${body}=  Get Response Body
    Return From Keyword   ${body}

Validate Request Errors
    [Arguments]  ${method}  ${endpoint}   ${message}   ${code}   ${payload}=
    Failure Call   ${method}   ${endpoint}   ${code}   ${payload}
    ${body}=  Get Response Body
    ${erorrMsg}=  Get Json Value   ${body}  /message
    Should Be Equal   ${erorrMsg}   ${message}
