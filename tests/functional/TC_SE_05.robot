*** Settings ***
Library    SeleniumLibrary
Library    ../config/env_loader.py
Resource    ../locators/TC_SE_05_locators.robot
Resource    ../resources/Pages/TC_SE_05_page.robot
Resource    ../resources/Pages/TC_S_01_page.robot
Resource    ../resources/common_resources.robot

Suite Setup    Load Environment
Test Setup     Open Application
Suite Teardown    Close Application

*** Test Cases ***
TC_SE_05 Select Seats
    Search For Buses
    sleep  2s
    Select Seats
