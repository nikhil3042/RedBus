*** Settings ***
Library    SeleniumLibrary
Library    DateTime
*** Keywords ***
Search Hotels
    [Documentation]    Searching hotels while giving location and check-in/check-out dates
    ${from}=    Get WebElement    xpath=(//div[@class='fieldLabels___f301df'])[1]
    Click Element    ${from}
    Press Keys    NONE    Jaipur
    Sleep    1s
    Wait Until Element Is Visible    xpath=//div[text()='Jaipur Airport (T2)']    timeout=5s
    Click Element    xpath=//div[text()='Jaipur Airport (T2)']
    Sleep    1s

    # --- Open Check-in Calendar ---
    ${check_in_field}=    Get WebElement    xpath=(//div[@class='fieldLabels___f301df'])[2]
    Click Element    ${check_in_field}
    Sleep    1s

    # --- Calculate Tomorrow's Date ---
    ${day_raw}=          Get Current Date    increment=1 day    result_format=%d
    ${day_stripped}=     Evaluate    str(int("${day_raw}"))
    ${month_full}=       Get Current Date    increment=1 day    result_format=%B
    ${year}=             Get Current Date    increment=1 day    result_format=%Y
    # --- Calculate Check-out Date (2 days from now) ---
    ${check_out_day_raw}=    Get Current Date    increment=3 day    result_format=%d
    ${check_out_day_stripped}=    Evaluate    str(int("${check_out_day_raw}"))
    ${check_out_month_full}=    Get Current Date    increment=3 day    result_format=%B
    ${check_out_year}=        Get Current Date    increment=3 day    result_format=%Y

    # --- Log for verification ---
    Log To Console    Clicking date: ${month_full} ${day_stripped}, ${year}
    Log To Console    Clicking check-out date: ${check_out_month_full} ${check_out_day_stripped}, ${check_out_year}

    # --- Click Tomorrow in Calendar and Check-Out in Calendar---
    Wait Until Element Is Visible    xpath=//div[@role='dialog']    timeout=5s
    Click Element    xpath=//div[@role='button' and contains(@aria-label,'${month_full} ${day_stripped}, ${year}')]
    Sleep    1s
    Click Element    xpath=//div[@role='button' and contains(@aria-label,'${check_out_month_full} ${check_out_day_stripped}, ${check_out_year}')]
    Sleep    2s
    
    # --- Click No of Rooms and Guests and Search hotel ---
    Click Element    xpath=//span[text()='No. of rooms & guests']
    Sleep    2s
    Click Element    xpath=(//button[@class='counterBtn___01cc8f '])[2]
    Sleep    1s
    Click Element    xpath=//button[text()='Search hotels']
    
    Sleep    5s