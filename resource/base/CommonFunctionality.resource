*** Settings ***
Documentation   This resource file contains browser configuration
...     and common keywords

Library     SeleniumLibrary


*** Variables ***

${BROWSER_NAME}     chrome
${URL}      https://demo.openemr.io/b/openemr

*** Keywords ***
Launch Browser And Nevigate To Url
    Open Browser    browser=${BROWSER_NAME}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=${URL}




