*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/common_resources.robot
Resource    ../../resources/pages/search_train.robot
Resource    ../../resources/pages/train_page.robot
Resource    ../../resources/pages/old_passenger.robot

Suite Setup    Open Application
Suite Teardown    Close Application

*** Test Cases ***
TC-TR-08 Senior Citizen Quota
    [Documentation]    Searching the train with senior citizen quota
    [Tags]    functional
    Train Page
    Sleep    3s
    Search Trains
    Sleep    3s
    Old Passenger