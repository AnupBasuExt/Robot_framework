*** Settings ***
Documentation   This suite will handles all operation in the logi page

Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${USERNAME_LOCATOR}     id=txtUsername
${PASSWORD_LOCATOR}     id=txtPassword

*** Keywords ***
Enter username
    [Arguments]     ${username}
    Input Text      ${USERNAME_LOCATOR}     ${username}

Enter Password
    [Arguments]     ${password}
    Input Text    ${PASSWORD_LOCATOR}    ${password}

#Create keyword for click on login

