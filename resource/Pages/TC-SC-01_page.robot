*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/TC-SC-01_locator.robot
*** Keywords ***
to view seat
    [Documentation]    to click on the clear all button
    Click Element    ${view_seat}
    Sleep    5s

    Click Element    ${seat}
    Sleep  2s