*** Settings ***
Resource  ../../resources/Pages/tc_ht_04_page.robot
Resource  ../../resources/common_resources.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_HT_04 Verify Price Filter on Hotels Page
    [Documentation]  Verify that the user is able to apply price filter on hotels page
    Navigating to Hotels
    Searching for hotels
    Filtering price range
    Verifying price filter applied

    Close Browser