*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/search_train.robot
Resource    ../../resource/pages/train_page.robot
Resource    ../../resource/pages/old_passenger.robot

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