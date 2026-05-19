*** Settings ***
Library    SeleniumLibrary
Library    ../../config/env_loader.py
Resource    ../../locators/TC_BD_02_locators.robot


*** Keywords ***
Dropping Point Selection
    click Element    ${view_seats_btn}
    sleep  3s
    Click Element    ${bording_pt}
    sleep  2s
    Click Element    ${bording_stn}
    sleep  2s
