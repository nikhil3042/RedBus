*** Settings ***
Library    SeleniumLibrary

Resource    ../locators/TC_AC_10_locators.robot
Resource    TC_S_01_page.robot
Resource    TC_SE_05_page.robot


*** Keywords ***

Search And Add Passenger Details

    Search For Buses

    Sleep    2s

    Click Element    ${VIEW_SEATS_BTN}

    Sleep    3s

    Click Element    ${SEAT}

    Sleep    3s

    Click Element    ${BOARD_DROP_BTN}

    Sleep    3s

    Click Element    ${BOARDING_POINT}

    Sleep    3s

    Click Element    ${DROPPING_POINT}

    Sleep    3s

    Input Text    ${PHONE_INPUT}    9876543210

    Sleep    3s

    Click Element    ${STATE_CHECKBOX}

    Sleep    3s

    Click Element    ${GENDER_OPTION}

    Sleep    3s

    Input Text    ${NAME_INPUT}    John Doe

    Input Text    ${AGE_INPUT}    21

    Click Element    ${EMAIL_OPTION}

    Click Element    ${CONTINUE_BTN}

    Sleep    2s