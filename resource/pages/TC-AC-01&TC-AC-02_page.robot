*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/TC-AC-01&TC-AC-02_locators.robot

*** Keywords ***
Signup in the application
    [Documentation]    New user signup in the redbus application
    [Arguments]    ${ph_no}
    
    Click Button    ${account_button}
    Log    Clicking on the account icon
    Sleep    3s

    Wait Until Element Is Visible    ${sign_up_link}

    Click Button    ${sign_up_link}
    Log    Clicking on the signup link
    Sleep    70s

    Sleep    3s
    Close Browser


