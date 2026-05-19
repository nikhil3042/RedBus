*** Settings ***
Resource   ../../resource/common_resources.robot
Resource   ../../resource/pages/specific_week_page.robot

Suite Setup    Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
Check Run Status
    [Documentation]  Check if train runs on a specific date
    Check Availability on a specific day  Jaipur  Udaipur