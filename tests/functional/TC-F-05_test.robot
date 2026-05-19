*** Settings ***
Resource  ../../resource/Pages/TC-F-04_page.robot
Resource  ../../resource/Pages/TC-F-05_page.robot
Resource  ../../resource/common_resources.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***

TC003 Clear all the filters
    [Documentation]    test case 3
    [Tags]    functional
    
    to search buses
    Sleep    5s

    to clear filters
    Sleep    5s