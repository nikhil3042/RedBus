*** Settings ***
Library    SeleniumLibrary
Library    ../../config/env_loader.py
Resource    ../common_resources.robot
Resource    ../../locators/login_locators.robot

*** Keywords ***
Login To RedBus
    Click Element    ${acc_btn}
    sleep  2s
    Click Element    ${login_btn}
    sleep  5s
    Input Text    ${mobile_no}  ${PHONE_NO}
    sleep  2s
    select frame  xpath=//iframe[@title='reCAPTCHA']
    Click Element    ${recaptcha}
    unselect frame
    sleep  10s
    Wait Until Element Is Enabled    xpath=//button[@aria-label='Continue']    20s
    Click Element    xpath=//button[@aria-label='Continue']
    sleep  30s
    Click Element    ${verify_btn}
    sleep  5s
