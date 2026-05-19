*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/tc_tr_04_locators.robot

*** Keywords ***
Navigating to Railways
    [Documentation]  Navigating to railways page
    Click Element    ${train_ticket_link}
    Log To Console  Navigating to railways page

Enter Journey Details
    [Documentation]    Fills source, destination and date
    [Arguments]        ${source}    ${desination}
    Click Element      ${boarding_point_field}
    Sleep    2s
    Press Keys  NONE  ${source}
    Sleep    1s
    Press Keys  NONE  ARROW_DOWN
    Press Keys  NONE  ENTER
    Press Keys  NONE  ${desination}
    Sleep    1s
    Press Keys  NONE  ARROW_DOWN
    Press Keys  NONE  ENTER
    Sleep    2s
    Click Element      ${date_day_after}
    Log To Console     Journey details entered
    Click Element    ${search_button}
    Sleep    2s

Apply 3A Filter
    [Documentation]    Selects AC 3 Tier filter
    Click Element      ${class_selection}
    Click Element      ${3a_option}
    Sleep    5s
    Log To Console     3A filter applied

Verify 3A
    [Documentation]    Loops all result cards and asserts Class: 3A
    ${cards}=          Get WebElements    ${3a_assert}
    ${count}=          Get Length         ${cards}
    Should Be True     ${count} > 0
    ...                msg=No 3A cards found — filter not working!

    FOR    ${card}    IN    @{cards}
        ${label}=    Get Element Attribute    ${card}    aria-label
        Should Contain    ${label}    Class: 3A
        ...    msg=Filter broken! Found: ${label}
    END
    Log    All ${count} cards verified as 3A
