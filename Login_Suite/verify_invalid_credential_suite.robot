*** Settings ***
Documentation       This suite will handle valid credential
...       test -TC_OH_2

# Library     SeleniumLibrary
# Library    OperatingSystem
Resource    ../Resource/Commonfunctionality.resource

Test Teardown       Close Browser
Test Setup      Launch Browser

Test Template   Invalid Credential Templates

*** Test Cases ***
#Invalid Credential Test
#    Input Text    id=txtUsername    Admin12
#    Input Password    id=txtPassword    admin123@
#    Click Element    id=btnLogin
#    Element Text Should Be    id=spanMessage    Invalid credentials

TC1     john    john123     Invalid credentials
TC2     peter   peter123     Invalid credentials


*** Keywords ***
Invalid Credential Templates
    [Arguments]     ${username}     ${password}     ${expected_error}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Element Text Should Be    id=spanMessage    expected=${expected_error}