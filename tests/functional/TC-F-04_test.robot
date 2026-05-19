*** Settings ***
Resource  ../../resource/Pages/TC-F-04_page.robot
Resource  ../../resource/common_resources.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***

TC002 Search the buses
    [Documentation]    test case 2 search the buses
    [Tags]    functional

    to search buses
    Sleep    20s


#*** Settings ***
#Resource  ../../resource/Pages/filter_page.robot
#Resource  ../../resource/common_resources.robot
#
#Suite Setup  Load Environment
#Test Setup  Open Application
#Test Teardown  Close Application
#
#*** Test Cases ***
#TC003 Apply filter
#    [Documentation]    test case 3 to apply filer
#    [Tags]    functional
#
#    To Apply Filter To Buses
#    Sleep    5s
