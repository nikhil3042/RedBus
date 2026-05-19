*** Settings ***
Resource    ../../resource/common_resources.robot
Resource    ../../locators/redbus_locators.robot

Suite Setup       Load Environment
Test Setup        Open Application
Test Teardown     Close Application

*** Test Cases ***

TC-S-02 Verify Past Date Selection Blocked
    [Documentation]    Verify user cannot select past journey date

    Wait Until Element Is Visible    ${FROM_INPUT}    10s

    # Focus on FROM_INPUT using JavaScript to bypass click interception
    Execute JavaScript    document.querySelector('input[id*="src"]').focus()
    Input Text    ${FROM_INPUT}    Jaipur
    Sleep    2s

    # Wait for suggestion dropdown and click first item
    Wait Until Element Is Visible    ${FROM_SUGGESTION_FIRST}    15s
    Click Element    ${FROM_SUGGESTION_FIRST}
    Sleep    2s

    # Focus on TO_INPUT using JavaScript to bypass click interception
    Execute JavaScript    document.querySelector('input[id*="dest"]').focus()
    Input Text    ${TO_INPUT}    Delhi
    Sleep    2s

    # Wait for suggestion dropdown and click first item
    Wait Until Element Is Visible    ${TO_SUGGESTION_FIRST}    15s
    Click Element    ${TO_SUGGESTION_FIRST}
    Sleep    2s

    Click Element    ${DATE_FIELD}
    Sleep    2s

    # Verify that past dates have the disabled class (CSS-based disabled state)
    Page Should Contain Element    ${PAST_DATE}
    ${element_class}=    Get Element Attribute    ${PAST_DATE}    class
    Should Contain    ${element_class}    disabled

    Log To Console    Past dates are disabled successfully