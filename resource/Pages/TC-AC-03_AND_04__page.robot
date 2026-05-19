*** Settings ***
Library  SeleniumLibrary
Resource   ../../locators/TC-AC-03_AND_04_locators.robot

*** Keywords ***
Log in to Red Bus
    [Documentation]  this logs in the user to the applications
#   [Arguments]  ${email}  ${password}
    Click Element    ${account_button}
    Sleep    5s
    Click Element    ${login_button}
    Sleep   80s
#    Click Element    ${email_button}
#    Sleep   80s

#    Page Should Contain    ACCOUNT
#    Page Should Contain Element    xpath=//a[text()='Log out']