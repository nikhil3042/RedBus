*** Settings ***
Library    SeleniumLibrary
Library    ../../config/env_loader.py
Resource    ../../locators/TC_SE_05_locators.robot

*** Keywords ***
Select Seats
    click Element    ${view_seats_btn}
    sleep  3s
    Click Element    ${upper_deck}
    sleep  3s
    get Text    ${price}
    sleep  2s
    Log to console    Price of Upper Deck Seat: ${price}
    Click Element    ${upper_deck}
    sleep  2s
    Click Element    ${lower_deck}
    sleep  2s
    Get Text    ${price}
    Log to console    Price of Lower Deck Seat: ${price}
    sleep  2s
    click Element    ${lower_deck}
    sleep  2s
    