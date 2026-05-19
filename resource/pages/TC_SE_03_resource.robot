*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/TC_SE_03_locators.robot

*** Keywords ***
Exceed Max Seat Limit
    Click Element    ${view_seat}
    Sleep            5s
    Wait Until Element Is Visible    ${seats_available}
    Sleep    2s

    ${seats}=        Get WebElements    ${seats_available}
    ${count}=        Set Variable       0
    FOR    ${seat}    IN    @{seats}
        Scroll Element Into View    ${seat}
        Sleep    1s
        Wait Until Element Is Visible    ${seat}
        Click Element    ${seat}
        Sleep    3s
        ${count}=    Evaluate       ${count} + 1
        IF    ${count} == 7
            Page Should Contain Element    ${pop_up}
            Sleep    3s
            Wait Until Element Is Visible    ${button}
            Execute JavaScript    document.querySelector('button[aria-label="Close"]').click()
            Exit For Loop
        END
    END
