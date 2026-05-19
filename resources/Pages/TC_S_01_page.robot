*** Settings ***
Library    SeleniumLibrary
Library    ../../config/env_loader.py
Resource    ../../locators/TC_S_01_locators.robot
Resource  ../common_resources.robot



*** Keywords ***
Search For Buses
    Input Text    ${from}  Jaipur
    sleep  2s
    press Keys    ${from}  ARROW_DOWN
    press Keys    ${from}  ENTER
    Input Text    ${to}  Delhi
    sleep  2s
    press Keys    ${to}  ARROW_DOWN
    press Keys    ${to}  ENTER
    Click Element    xpath=//button[@aria-label='Search buses']
    sleep  5s