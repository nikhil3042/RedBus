*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/Pages/Hotel_setDate.robot
Resource    ../../resources/common_resources.robot

Suite Setup    Initialize Test
Suite Teardown    Close Application

*** Test Cases ***
OutIn
    [Documentation]    checkin Checkout
    [Tags]    functional
    Checkin Checkout
    Sleep    4s
