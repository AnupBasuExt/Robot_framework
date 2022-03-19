*** Settings ***
Documentation   This suite will handles all operation in the logi page

Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${USERNAME_LOCATOR}     id=txtUsername

*** Keywords ***
Enter username
    [Arguments]     ${username}
    Input Text      ${USERNAME_LOCATOR}     ${username}
