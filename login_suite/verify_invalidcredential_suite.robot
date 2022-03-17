*** Settings ***
Documentation   This suite willl handles all the test cases related to valid credentials test. Test case for orangehrm - TC_OH_2

Resource        ../Resource/Base/CommonFunctionality.resource

Test Teardown       Close Browser


*** Test Cases ***
Verify Invalid Credential Test
    Launch Browser
    Input Text    id=txtUsername    Anup
    Input Password    id=txtPassword    anup123
    Click Element    id=btnLogin
    Element Text Should Be    xpath=//span[@id='spanMessage']    Invalid credentials