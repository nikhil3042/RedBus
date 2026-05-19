*** Settings ***
Resource    ../../resource/pages/TC_03_resource.robot

Resource    ../../resource/pages/TC_SE_03_resource.robot
Resource    ../../resource/common_resources.robot

Suite Setup    Load Environment
Test Setup    Open Application
Test Teardown    Close Application

*** Test Cases ***
TC_SE_03 Bus with available seats
    [Documentation]     operator allows max 6 seats/booking
    [Tags]    functional
    Source And Destination  Jaipur  Delhi
    Log    Reached to the bus naivgation page
    Exceed Max Seat Limit

