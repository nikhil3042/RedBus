*** Settings ***
Resource     ../../resource/pages/TC_SE_02_resource.robot
Resource    ../../resource/common_resources.robot
Resource     ../../resource/pages/TC_03_resource.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application
*** Test Cases ***
TC_03 Source Equal To Destination
    [Documentation]    Seat layout showing booked (grey) seats
    [Tags]    functional
    Source And Destination  Jaipur  Udaipur

    Log To Console    now checking that grey seats are not selecting
    Click Booked Seat

