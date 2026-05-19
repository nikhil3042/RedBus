*** Settings ***
Resource  ../../resources/Pages/tc_tr_11_page.robot
Resource  ../../resources/common_resources.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_TR_11 Verify Train Live Status
    [Documentation]  Verify that the user is able to check the live status of a train
    Navigating to Railways
    Navigating to Live Train Status
    Searching for train status    12618
    Verifying train status

    Close Browser