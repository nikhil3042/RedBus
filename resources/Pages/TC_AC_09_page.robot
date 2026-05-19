*** Settings ***
Library    SeleniumLibrary
Library    ../../config/env_loader.py
Resource    ../../locators/TC_AC_09_locators.robot
Resource    ../common_resources.robot

*** Keywords ***
Upload Oversized Profile Photo
    Click Element    ${acc_btn}
    sleep  2s
    Click Element    ${personal_info}
    sleep  2s
    Click Element    ${profile_icon}
    sleep  2s
    Choose File    xpath=//input[@type='file']  'C:\Users\muska\Desktop\Mock Sprint\RedBus\resources\Pages\bernard-hermant-nHRXNv2qeDE-unsplash.jpg'
    sleep  5s