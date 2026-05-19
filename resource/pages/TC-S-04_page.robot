*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/TC-S-04_locators.robot

*** Keywords ***
Swap destination
    [Documentation]    Swap From and To destination

    Click Element    ${bus_button}
    Sleep    4s
    
    Wait Until Element Is Visible    ${from}  2s
    Click Element    ${from}
    Input Text    ${from}  Jaipur
    Sleep    5s
    Wait Until Element Is Visible    ${from_suggestion}
    Click Element    ${from_suggestion}
    Sleep    2s
    
    Wait Until Element Is Visible    ${to}  2s
    Click Element    ${to}
    Input Text    ${to}  Delhi
    Sleep    5s
    Wait Until Element Is Visible    ${to_suggestion}
    Click Element    ${to_suggestion}
    Sleep    2s
    
    
    Wait Until Element Is Visible    ${cal_input}  2s
    Click Element    ${cal_input}
    Wait Until Element Is Visible    ${cal}  timeout=10s

#    things were mismatching alot, so using javascript to interact directly with the DOM.

    Execute JavaScript    document.querySelector('div#onward span[data-date="2026-05-25"]').click()
    Sleep    5s

    Click Button    ${search_buses}
    Sleep    5s

    Wait Until Element Is Visible    ${swap_button}

    Click Element    ${swap_button}
    Log    Swaping destinations
    Sleep    20s

    Close Browser



