*** Settings ***
Resource     ../../resource/pages/TC_03_resource.robot
Resource    ../../resource/common_resources.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***

TC_03 Source Equal To Destination
    [Documentation]    Test Case 03 Positive adding from and To
    [Tags]    functional
#    Set Global Variable    ${SOURCE_CITY}  Jaipur
#    Set Global Variable    ${DEST_CITY}  Jaipur
    Source and Destination  Jaipur  Jaipur
