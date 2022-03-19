*** Settings ***
Documentation   This suite willl handles all the test cases related to valid credentials test. Test case for orangehrm - TC_OH_2

Resource        ../Resource/Base/CommonFunctionality.resource
Resource        ../Resource/Pages/LoginPage.resource

Test Setup      Launch Browser
Test Teardown       Close Browser

Test Template       Verify Invalid Credential Template


*** Test Cases ***
TC1     John    john123     Invalid credentials
TC2     Peter   peter123    Invalid credentials
TC3     ${EMPTY}    admin789    Username cannot be empty
TC4     Anup        ${EMPTY}    Password cannot be empty


*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${username}     ${password}     ${expected_error}
    Enter username    ${username}
    Enter Password    ${password}
    Click Login
    #Element Text Should Be    xpath=//span[@id='spanMessage']    ${expected_error}
    Validate Error Message    ${expected_error}