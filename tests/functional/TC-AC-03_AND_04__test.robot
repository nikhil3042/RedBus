*** Settings ***
Resource  ../../resource/Pages/TC-AC-03_AND_04__page.robot
Resource  ../../resource/common_resources.robot

#Resource  ../../resource/Pages/homepage.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC001 Login into the Applications
    [Documentation]  Test case 1 logging in the application
    [Tags]  functional

    Log in to Red Bus
    Sleep    5s