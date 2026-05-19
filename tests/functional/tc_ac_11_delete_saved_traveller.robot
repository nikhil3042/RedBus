*** Settings ***
Resource    ../../resource/common_resources.robot
Resource    ../../locators/redbus_locators.robot

Suite Setup       Load Environment
Test Setup        Open Application
Test Teardown     Close Application

*** Test Cases ***

TC-AC-11 Delete Saved Traveller
    [Documentation]    Verify user can delete saved traveller
    [Tags]    requires_login

    # Assuming user is already logged in

    Click Element    ${ACCOUNT_ICON}
    Wait Until Element Is Visible    ${SAVED_TRAVELLER_OPTION}    10s

    Click Element    ${SAVED_TRAVELLER_OPTION}
    Sleep    3s

    Click Element    ${DELETE_TRAVELLER_BTN}
    Sleep    2s

    Click Element    ${CONFIRM_DELETE_BTN}
    Sleep    3s

    Page Should Not Contain Element    ${DELETED_TRAVELLER_NAME}