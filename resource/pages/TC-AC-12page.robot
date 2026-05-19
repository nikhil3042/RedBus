*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/TC-AC-12_locator.robot

* Keywords *
Invalid user details
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
    Execute JavaScript               document.querySelector('div#onward span[data-date="2026-05-20"]').click()
    Sleep                            2s
    Click Element    ${search_buses}
    Sleep    5s

    Click Element    ${view_seat}
    Sleep    5s

    Click Element    ${cross_icon}
    Sleep    5s

    ${seats}=        Get WebElements    ${seats_available}
    ${count}=        Set Variable       0

    FOR    ${seat}    IN    @{seats}
        Scroll Element Into View    ${seat}
        Sleep    1s
        Wait Until Element Is Visible    ${seat}
        Click Element    ${seat}
        Sleep    3s
        ${count}=    Evaluate       ${count} + 1
        IF    ${count} == 2
#            Page Should Contain Element    ${pop_up}
#            Sleep    3s
#            Wait Until Element Is Visible    ${button}
#            Execute JavaScript    document.querySelector('button[aria-label="Close"]').click()
            Exit For Loop
        END
    END
    
    Click Element    ${select_borading}
    Sleep    5s

    Click Element   ${boarding_point}
    Sleep    5s
    
    Click Element   ${dropping_point}
    Sleep    5s

    Input Text    ${phone_number}    7568771154
    Sleep    5s

    Input Text    ${user1}    khushbu
    Sleep    5s
    
    Input Text    ${age1}    22
    Sleep   5s
    
    Click Element    ${gender}
    Sleep    5s
    
    Input Text    ${user2}    Rishit
    Sleep    5s
    
    Input Text    ${age2}    22
    Sleep    5s
    
    Click Element    ${gender2}
    Sleep    5s