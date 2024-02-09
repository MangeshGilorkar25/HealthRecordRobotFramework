*** Settings ***
Documentation       This suite tests the vlaid credential are allowded to access portal

Resource    ../../resource/base/CommonFunctionality.resource

Test Setup  Launch Browser And Nevigate To Url
Task Teardown   Close Browser


*** Test Cases ***
Valid Login Test
    Input Text    id=authUser    admin
    Input Password    css=#clearPass    pass
    Select From List By Label    xpath=//select[@name='languageChoice']    English (Indian)
    Click Element    id=login-button
    Title Should Be    OpenEMR
