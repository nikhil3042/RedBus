*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/home_page_locators.robot

*** Keywords ***
Check PNR
    Click Element    ${TRAIN_TAB}
    Sleep    1s
    Click Element    ${PNR}
    Sleep    1s
    Click Element    ${PNR_VALUE}
    Sleep    1s
    Press Keys    NONE    9568547598
    Sleep    3s
    Click Element    ${CHECK_PNR}
    Sleep    2s