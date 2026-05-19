*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/pages/hotel_page.robot
Resource    ../../resource/pages/search_hotel.robot
Resource    ../../resource/common_resources.robot

Suite Setup    Open Application
Suite Teardown    Close Application

*** Test Cases ***
TC-HT-01 Search Hotel
    [Documentation]    Searching the hotel
    [Tags]    functional
    Hotel Page
    Sleep    3s
    Search Hotels
