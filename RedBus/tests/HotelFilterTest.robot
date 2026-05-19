*** Settings ***
Resource    ../resource/common_resources.robot
Resource    ../resource/HotelFilterResource.robot

Suite Setup  Load Environment
Test Setup    Open Application
Test Teardown    Close Application

*** Test Cases ***
Apply Hotel Filters For Wifi
    [Documentation]    To apply the hotel filters and verify the results
    Apply Hotel Filters
