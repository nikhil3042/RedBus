*** Settings ***
Library    SeleniumLibrary
Library    ../config/env_loader.py
Resource    ../locators/TC_BD_02_locators.robot
Resource    ../resources/common_resources.robot
Resource    ../resources/Pages/TC_BD_02_page.robot
Resource    ../resources/Pages/TC_S_01_page.robot

Suite Setup    Load Environment
Test Setup     Open Application
Suite Teardown    Close Application

*** Test Cases ***
Select Boarding Point

    Search For Buses
    sleep  2s
    Boarding Point Selection
    sleep  2s
