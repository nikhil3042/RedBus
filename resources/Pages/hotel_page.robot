*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/home_page_locator.robot

*** Keywords ***
Hotel Page
    Click Element    ${hotel_button}
    Log To Console    Clicking on hotel button