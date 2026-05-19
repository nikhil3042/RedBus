*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/TC-F-05_locator.robot

*** Keywords ***
to clear filters
    [Documentation]    to click on the clear all button
    Click Element    ${clear_filter}
    Sleep    3s
    Click Element    ${view_seat}
    Sleep    10s