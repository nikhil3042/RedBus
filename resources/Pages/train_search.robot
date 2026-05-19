*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/home_page_locators.robot

*** Keywords ***
Verify train search

    Click Element    ${TRAIN_TAB}
    Log to console    Clicked on train tab    
    Sleep    2s
    Click Element    ${SOURCE_FIELD}
    Log to console    Clicked on source field
    Sleep    2s
    Press Keys    NONE    JP
    Sleep    2s
    Press Keys    NONE    ARROW_DOWN
    Sleep    2s
    Press Keys    NONE    ENTER
    Sleep    2s

    Press Keys    NONE    NDLS
    Sleep    3s
    Press Keys    NONE    ARROW_DOWN
    Sleep    2s
    Press Keys    NONE    ENTER
    Sleep    2s

    Click Element    ${SEARCH_BUTTON}
    Log to console    Clicked search button

    # Verify results
#    Wait Until Element Is Visible    ${RESULTS_CONTAINER}
#    Log to console    Train search results displayed
