*** Settings ***
Resource  ../../resource/pages/TC-S-04_page.robot
Resource  ../../resource/common_resources.robot

Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC-S-04 Swap Destination
    [Documentation]  this swaps the from & to field
    [Tags]    functional

    Swap Destination
    Sleep    5s