*** Settings ***
Documentation   This suite handles test case related to Memberships

Resource    ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/MainPage.resource

Library     DataDriver      file=../test_data/orange_data.xlsx      sheet_name=AddMembership

Test Setup  Launch Browser
Test Teardown   Close Browser

Test Template   Verify Add Membership Template

*** Test Cases ***
Verify Add Membership Test

*** Keywords ***
Verify Add Membership Template
    [Arguments]     ${username}     ${password}     ${membership}   ${subscription_paid_by}     ${subscription_amount}      ${currency}
    Enter username    ${username}   
    Enter Password    ${password}  
    Click Login
    Page Should Contain    My Info
    Click On MyInfo
    Click Element    link=Memberships
    Click Element    id=btnAddMembershipDetail
    Click Element    id=membership_membership
    Select From List By Label    id=membership_membership       ${membership}
    Click Element    id=membership_subscriptionPaidBy
    Select From List By Label    id=membership_subscriptionPaidBy       ${subscription_paid_by}
    Input Text    id=membership_subscriptionAmount    ${subscription_amount}
    Click Element    id=membership_currency
    Select From List By Label    id=membership_currency     ${currency}
    Click Element    id=btnSaveMembership
    Table Should Contain    id=listMembershipDetails    ${membership}
    Table Should Contain    id=listMembershipDetails    ${subscription_amount}