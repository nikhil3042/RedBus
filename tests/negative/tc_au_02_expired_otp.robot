*** Settings ***
Resource    ../../resource/common_resources.robot
Resource    ../../locators/redbus_locators.robot

Suite Setup       Load Environment
Test Setup        Open Application
Test Teardown     Close Application


*** Test Cases ***

TC-AU-02 Verify Expired OTP
    [Documentation]    Verify expired OTP validation

    [Tags]    manual

    Sleep    3s
    Wait Until Element Is Visible    ${ACCOUNT_ICON}    10s
    Click Element    ${ACCOUNT_ICON}
    Sleep    2s

    Wait Until Element Is Visible    ${LOGIN_SIGNUP_BTN}    10s
    Click Element    ${LOGIN_SIGNUP_BTN}
    Sleep    2s

    Wait Until Element Is Visible    ${MOBILE_INPUT}    10s
    Input Text    ${MOBILE_INPUT}    ${USER_NO}
    Sleep    2s

    Wait Until Element Is Visible    ${RECAPTCHA_IFRAME}    10s
    Select Frame    ${RECAPTCHA_IFRAME}
    sleep   2s
    Click Element    ${CAPTCHA_CHECKBOX}
    Sleep    5s
    Unselect Frame
    Sleep    2s

    Wait Until Element Is Visible    ${CONTINUE_BTN}    10s
    Click Element    ${CONTINUE_BTN}

    Sleep    10s

    Wait Until Element Is Visible    ${OTP_INPUT}    10s
    Input Text    ${OTP_INPUT}    123456

    Wait Until Element Is Visible    ${VERIFY_BTN}    10s
    Click Element    ${VERIFY_BTN}

    Wait Until Page Contains    Incorrect OTP    10s

