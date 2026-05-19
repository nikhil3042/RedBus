*** Settings ***
Library  SeleniumLibrary
Resource  ../../locaters/prev_date_loc.robot

*** Keywords ***
Check Previous Date
    [Documentation]  Check the previous date functionality of the application
    Click Element  ${hotel_button}
    Sleep  2s
    Click Element  ${check_button}
    Sleep  2s
    Click Element  ${nxt_date}
    Sleep  2s
    Click Element  ${prev_date}

