*** Settings ***
Resource  ../../resource/pages/TC-AC-01&TC-AC-02_page.robot
Resource  ../../resource/common_resources.robot

Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC-AC-01&TC-AC-02 Navigate Accounts
    [Documentation]  this navigates to the account field
    [Tags]    functional

    Signup In The Application    8058268221




