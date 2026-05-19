*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/home_page_locator.robot

*** Keywords ***
Train Page
    Click Element    ${train_button}
    Log To Console    Clicking on train button