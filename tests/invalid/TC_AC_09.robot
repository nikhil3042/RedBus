*** Settings ***
Library    SeleniumLibrary
Library    ../config/env_loader.py
Resource    ../locators/TC_AC_09_locators.robot
Resource    ../resources/Pages/TC_AC_09_page.robot
Resource    ../resources/common_resources.robot
Resource    ../resources/Pages/login_page.robot

Suite Setup    Load Environment
Test Setup     Open Application
Suite Teardown    Close Application

*** Test Cases ***
TC_AC_09 Upload Oversized Profile Photo
    Login To RedBus
    sleep  2s
    Upload Oversized Profile Photo
