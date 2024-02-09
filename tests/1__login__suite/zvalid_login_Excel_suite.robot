*** Settings ***
Documentation       This suite tests the vlaid credential are allowded to access portal

Resource    ../../resource/base/CommonFunctionality.resource

Library    DataDriver       file=../../test_data/open_emr_data.xlsx

Test Setup  Launch Browser And Nevigate To Url
Task Teardown   Close Browser
Test Template   Valid Login Template

*** Test Cases ***
Valid Login TC1
    admin   pass    English (Indian)    OpenEMR

Valid Login TC2
    accountant   accountant    English (Indian)    OpenEMR

Valid Login TC3
    physician   physician    Dutch    OpenEMR


#English (Indian)

*** Keywords ***
Valid Login Template
    [Arguments]   ${username}      ${password}      ${language}      ${expected_title}
    Input Text    id=authUser    ${username}
    Input Password    css=#clearPass    ${password}
    Select From List By Label    xpath=//select[@name='languageChoice']    ${language}
    Click Element    id=login-button
    Title Should Be    ${expected_title}