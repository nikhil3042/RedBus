*** Settings ***
Library    SeleniumLibrary
Resource    ../../locators/tc_tr_12_locators.robot

*** Keywords ***
Terminated Train Status
    [Documentation]    To verify the status of the train when it is terminated
    Wait Until Element Is Visible  ${train_button_link}
    Click Element    ${train_button_link}
    Sleep    2s

    Scroll Element Into View    ${Status_btn}
    Click Element    ${Status_btn}

    Input Text    ${trainno_ipbox}  17419
    Sleep    1s
    Click Element    ${first_option}
    Click Element    ${check_status_btn}
    Sleep    5s

    Scroll Element Into View    //div[@class="lts_cancel_text_block"]
    Element Should Contain    //span[contains(@class,'lts_can_text')]    partly cancelled
    Sleep    2s

    Log    The train is partly cancelled and the status is displayed as expected
