*** Settings ***
Library    SeleniumLibrary
Library    ../config/env_loader.py

Resource    ../resources/pages/TC_AC_10_page.robot

Suite Setup       Load Environment
Test Setup        Open Application
Suite Teardown    Close Application


*** Test Cases ***
Add Passenger Details
    Search And Add Passenger Details