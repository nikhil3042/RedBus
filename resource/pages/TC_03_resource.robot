*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/TC_03_locators.robot

*** Keywords ***
Source And Destination
    [Arguments]    ${Source_city}  ${From_city}
    Click Element                    ${bus_tag}
    Sleep                            2s
    Click Element                    ${source_from}
    Input Text                       ${source_from}    ${Source_city}
    Sleep                            2s
    Wait Until Element Is Visible    ${from_suggestion}
    Click Element                    ${from_suggestion}
    Sleep                            1s
    Click Element                    ${source_to}
    Input Text                       ${source_to}      ${From_city}
    Sleep                            2s
    Wait Until Element Is Visible    ${to_suggestion}
    Click Element                    ${to_suggestion}
    Sleep                            1s
    Wait Until Element Is Visible    ${cal_input}
    Click Element                    ${cal_input}
    Wait Until Element Is Visible    ${cal}    timeout=10s
#    Click Element    ${next_month}
    
#    element click intercepted: Element is not clickable at point
#    Click Element    ${trip_date}
#    ${trip_date}        xpath=//div[@id="onward"]//span[@data-date="2026-05-18"
 # JavaScript click - directly triggers click on DOM element
    Execute JavaScript               document.querySelector('div#onward span[data-date="2026-05-22"]').click()
    Sleep                            2s
    Click Element    ${search_buses}
    Sleep    5s