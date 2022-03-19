*** Settings ***
Documentation   This suite will handles all operation in the logi page

Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${USERNAME_LOCATOR}     id=txtUsername
${PASSWORD_LOCATOR}     id=txtPassword
${BUTTON_LOGIN}         id=btnLogin
${ERROR_LOCATOR}        id=spanMessage

*** Keywords ***
Enter username
    [Arguments]     ${username}
    Input Text      ${USERNAME_LOCATOR}     ${username}

Enter Password
    [Arguments]     ${password}
    Input Text    ${PASSWORD_LOCATOR}    ${password}

Click Login
    Click Element    ${BUTTON_LOGIN}

Validate Error Message
    [Arguments]     ${expected_error}
    Element Text Should Be    ${ERROR_LOCATOR}    ${expected_error}
