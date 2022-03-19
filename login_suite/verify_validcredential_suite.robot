*** Settings ***
Documentation   This suite willl handles all the test cases related to valid credentials test. Test case for orangehrm - TC_OH_2

Resource        ../Resource/Base/CommonFunctionality.resource
Resource        ../Resource/Pages/LoginPage.resource

Test Setup          Launch Browser
Test Teardown       Close Browser


*** Test Cases ***
Verify Valid Credential Test
    Enter username    Admin
    Enter Password    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
    Capture Page Screenshot