*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/Pages/train_search.robot
Resource    ../../resources/common_resources.robot

Suite Setup       Initialize Test
Suite Teardown    Close Application

*** Test Cases ***
Verify Train Search
    [Documentation]    verifying train search
    [Tags]    functional
    Verify train search
    Sleep    3s


