*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/Pages/PNR_check.robot
Resource    ../../resources/common_resources.robot

Suite Setup    Initialize Test
Suite Teardown    Close Application

*** Test Cases ***
TC-TR-10
    [Documentation]    helo
    [Tags]    functional
    Check PNR
    Sleep    3s