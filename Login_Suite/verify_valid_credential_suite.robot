*** Settings ***
Documentation       This suite will handle valid credential
...       test -TC_OH_2

# Library     SeleniumLibrary
# Library    OperatingSystem
Library     DataDriver      file=../test_data/orange_data.xlsx      sheet_name=Valid credential
Resource    ../Resource/Commonfunctionality.resource

Test Teardown       Close Browser
Test Setup      Launch Browser
Test Template   valid Credential

*** Test Cases ***
TC1
#TC1     Admin   admin123    My Info
#TC2     Admin   admin123   Welcome
#TC3     Admin   admin123    Admin

*** Keywords ***
valid Credential
#    Input Text    id=txtUsername    Admin
#    Input Password    id=txtPassword    admin123
#    Click Element    id=btnLogin
#    Page Should Contain    My Info

    [Arguments]     ${username}     ${password}     ${expected_value}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Page Should Contain    ${expected_value}
