*** Settings ***
Documentation   This suite willl handles all the test cases related to valid credentials test. Test case for orangehrm - TC_OH_2

Resource        ../Resource/Base/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown       Close Browser

Test Template       Verify Invalid Credential Template


*** Test Cases ***
TC1     John    john123     Invalid credentials
TC2     Peter   peter123    Invalid credentials


*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${username}     ${password}     ${expected_error}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Element Text Should Be    xpath=//span[@id='spanMessage']    ${expected_error}