*** Settings ***
Library    SeleniumLibrary
Resource    ../../resource/common_resources.robot
Resource    ../../resource/pages/search_train.robot
Resource    ../../resource/pages/train_page.robot

Suite Setup    Open Application
Suite Teardown    Close Application

*** Test Cases ***
TC-TR-01 Search Train
    [Documentation]    Searching the train
    [Tags]    functional
    Train Page
    Sleep    3s
    Search Trains
    
