*** Settings ***
Library    SeleniumLibrary

Library    ../config/env_loader.py
Resource    ../locators/login_locators.robot
Resource    ../resources/Pages/login_page.robot
Resource    ../resources/common_resources.robot

Suite Setup    Load Environment
Test Setup     Open Application
Suite Teardown    Close Application

*** Test Cases ***
Login With Valid Credentials
    Login to RedBus
    sleep  2s
    Close Application