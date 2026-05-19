*** Settings ***
Library     SeleniumLibrary
Resource    ../../locators/TC_SE_02_locators.robot

*** Keywords ***
Click Booked Seat
    Click Button    ${view_seat}
    Sleep    3s
    Wait Until Element Is Visible    ${Booked_seat}

    Page Should Contain    Sold