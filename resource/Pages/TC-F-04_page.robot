*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/TC-F-04_locator.robot

*** Keywords ***
to search buses
    [Documentation]    to search the buses

    Click Element    ${bus_button}
    Sleep    4s
    
    Wait Until Element Is Visible    ${from}  2s
    Click Element    ${from}
    Input Text    ${from}  Jaipu
    Sleep    5s
    Wait Until Element Is Visible    ${from_suggestion}
    Click Element    ${from_suggestion}
    Sleep    2s
    
    Wait Until Element Is Visible    ${to}  2s
    Click Element    ${to}
    Input Text    ${to}  udaipur
    Sleep    5s
    Wait Until Element Is Visible    ${to_suggestion}
    Click Element    ${to_suggestion}
    Sleep    2s
    
    
    Wait Until Element Is Visible    ${cal_input}  2s
    Click Element    ${cal_input}
    Wait Until Element Is Visible    ${cal}  timeout=10s
#    miss match horhi thi chije bhut isliye direct dom se interact ke liye javascript lgayi

    Execute JavaScript    document.querySelector('div#onward span[data-date="2026-05-25"]').click()
    Sleep    5s

    Click Button    ${search_buses}
    Sleep    5s
    
    Wait Until Element Is Visible    ${filter1}
    Click Element    ${filter1}
    Sleep    2s

    Wait Until Element Is Visible    ${filter2}
    Click Element    ${filter2}
    Sleep    2s

    Wait Until Element Is Visible    ${filter3}
    Click Element    ${filter3}
    Sleep    2s



    
