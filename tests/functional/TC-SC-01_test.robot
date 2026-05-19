*** Settings ***
Resource  ../../resource/Pages/TC-F-04_page.robot
Resource  ../../resource/Pages/TC-SC-01_page.robot
Resource  ../../resource/Pages/TC-AC-03_AND_04__page.robot
Resource  ../../resource/common_resources.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***

TC004 select the seat
    [Documentation]    test case 4
    [Tags]    functional

    Log in to Red Bus
    Sleep    5s

    to search buses
    Sleep    5s

    to view seat
    Sleep    5s

