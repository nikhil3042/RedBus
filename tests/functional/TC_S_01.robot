*** Settings ***
Library    SeleniumLibrary
Library    ../config/env_loader.py
Resource    ../locators/TC_S_01_locators.robot
Resource    ../resources/Pages/TC_S_01_page.robot

Suite Setup    Load Environment
Test Setup     Open Application
Suite Teardown    Close Application

*** Test Cases ***
TC_S_01 Search For Buses
    Search For Buses