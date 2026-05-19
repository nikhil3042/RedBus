*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/Pages/hotel_checkin.robot
Resource    ../../resources/common_resources.robot

Suite Setup    Initialize Test
Suite Teardown    Close Application

*** Test Cases ***
Checkin
    [Documentation]    checkin checkout
    [Tags]    functional
    Checkin
    Sleep    2s