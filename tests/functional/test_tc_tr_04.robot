*** Settings ***
Resource  ../../resources/Pages/tc_tr_04_page.robot
Resource  ../../resources/common_resources.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_TR_04 Verify Filter By 3A Class
    [Documentation]  Verify that the user is able to filter the trains by 3A class
    Navigating to Railways
    Enter Journey Details    Jaipur    Delhi
    Apply 3A Filter
    Verify 3A

    Close Browser