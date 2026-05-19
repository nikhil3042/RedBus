*** Settings ***
Resource  ../../resource/common_resources.robot
Resource  ../../resource/pages/prev_date_page.robot

Suite Setup  Load Environment
Test Setup    Open Application
Test Teardown   Close Application

*** Test Cases ***
Check Previous Date Functionality
    [Documentation]  Check the previous date functionality of the application
    Check Previous Date