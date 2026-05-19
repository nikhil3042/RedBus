*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/tc_tr_11_locators.robot

*** Keywords ***
Navigating to Railways
    [Documentation]  Navigating to railways page
    Click Element    ${train_ticket_link}
    Log To Console  Navigating to railways page
    Sleep   3s

Navigating to Live Train Status
    [Documentation]  Navigating to live train status page
    Click Element    ${train_status_button}
    Log To Console  Navigating to live train status page

Searching for train status
    [Documentation]  Searching for train status
    [Arguments]  ${train_number}
    Click Element    ${search_field}
    Sleep    2s
    Press Keys  NONE  ${train_number}
    Sleep    5s
    Click Element    ${train_suggestion}
    Sleep    2s
    Click Element    ${search_button}
    Log To Console  Train status searched for ${train_number}
    Sleep    5s

Verifying train status
    [Documentation]  Verifying train status results
    Page Should Contain Element    ${current_station}
    Sleep    2s
    Page Should Contain Element    ${previous_station}
    Sleep    2s
    ${delay_visible}=    Run Keyword And Return Status
    ...    Page Should Contain Element    ${delay_time}

    ${running_visible}=    Run Keyword And Return Status
    ...    Page Should Contain Element    ${running_status}

    Should Be True    ${delay_visible} or ${running_visible}
    Sleep    2s
    Page Should Contain Element    ${last_station}
    Sleep    2s
    Log To Console  Train status results verified
