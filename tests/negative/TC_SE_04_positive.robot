*** Settings ***
Resource    ../../resource/pages/TC_SE_04_resource.robot
Resource    ../../resource/pages/TC_03_resource.robot
Resource    ../../resource/common_resources.robot


Suite Setup    Load Environment
Test Setup    Open Application
Test Teardown    Close Application
*** Test Cases ***
TC_SE_04 At least one seat is selected
    [Documentation]    After selecting 1 seat and Deselecting it .Automatically price Decreases and Count decreases
    [Tags]    functional
    Source And Destination  Jaipur  Delhi
    Log To Console    reached to the bus navigation page
    Deselect A Chosen Seat


