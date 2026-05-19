*** Settings ***
Library  SeleniumLibrary
Resource   ../../locaters/specific_week.robot

*** Keywords ***
Check Availability on a specific day
    [Documentation]  Check if train is running on non running day
    [Arguments]  ${SRC}  ${DST}
    Click Element  ${train_page_loc}
    Wait Until Element Is Visible    ${from_srch}
    Click Element  ${from_srch}
    Sleep  2s
    Press Keys  NONE   ${SRC}
    sleep  2s
    Press Keys  None  ARROW_DOWN
    Press Keys  None  ENTER
    Sleep  2s
    Press Keys  NONE   ${DST}
    sleep  2s
    Press Keys  None  ARROW_DOWN
    Press Keys  None  ENTER
    Click Element  ${date_icon}
    Sleep  2s
    Click Element  ${date_prev}
    Sleep  2s
    Click Element  ${srch_but}
    Sleep  2s
    Page should Contain Element  ${train_loc}
    Sleep  2s
    Click Element  ${date_next}
    Sleep  2s
    Click Element    ${new_srch}
    Sleep  2s
    Page Should Not Contain Element  ${train_loc}
