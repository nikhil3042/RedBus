*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/Pages/hotel_page.robot
Resource    ../../resources/Pages/search_hotel.robot
Resource    ../../resources/common_resources.robot

Suite Setup    Open Application
Suite Teardown    Close Application

*** Test Cases ***
TC-HT-01 Search Hotel
    [Documentation]    Searching the hotel
    [Tags]    functional
    Hotel Page
    Sleep    3s
    Search Hotels
