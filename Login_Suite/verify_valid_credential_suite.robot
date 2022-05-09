*** Settings ***
Documentation       This suite will handle valid credential
...       test -TC_OH_2

# Library     SeleniumLibrary
# Library    OperatingSystem
Resource    ../Resource/Commonfunctionality.resource

Test Teardown       Close Browser
Test Setup      Launch Browser

*** Test Cases ***
valid Credential Test
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
