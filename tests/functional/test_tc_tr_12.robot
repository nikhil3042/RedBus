*** Settings ***
Resource    ../../resources/common_resources.robot
Resource    ../../resources/Pages/tc_tr_12_page.robot

Suite Setup  Load Environment
Test Setup    Open Application
Test Teardown    Close Application

*** Test Cases ***
Terminated Train Status
    [Documentation]    To verify the status of the train when it is terminated
    Terminated Train Status
