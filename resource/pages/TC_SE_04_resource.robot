*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/TC_SE_04_locators.robot

*** Keywords ***
Deselect a chosen seat

    Click Element    ${view_Seat}
    Sleep    3s
    Wait Until Element Is Visible    ${seats_available}
    Scroll Element Into View    ${seats_available}
    Sleep    1s
    ${selected_seat}=  Get WebElement    ${seats_available}
    Wait Until Element Is Visible    ${selected_seat}
    Click Element    ${selected_seat}
    Sleep    3s
    Page Should Contain Element    ${footer}
    Click Element    ${selected_seat}
    Wait Until Element Is Not Visible    ${footer}
    Page Should Not Contain Element    ${footer}
