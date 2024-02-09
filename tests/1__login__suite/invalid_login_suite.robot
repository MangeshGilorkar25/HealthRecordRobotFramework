*** Settings ***
Documentation       This suite tests the vlaid credential are allowded to access portal

Resource    ../../resource/base/CommonFunctionality.resource

Test Setup  Launch Browser And Nevigate To Url
Task Teardown   Close Browser


*** Test Cases ***
Valid InvalidLogin Test
    Input Text    id=authUser    john
    Input Password    css=#clearPass    pass121
    Select From List By Label    xpath=//select[@name='languageChoice']    English (Indian)
    Click Element    id=login-button
    Element Should Contain    xpath=//p[contains(text(),'Invalid')]   Invalid username or password





