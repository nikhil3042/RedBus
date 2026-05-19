*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Resource    ../../locators/hotel_locators.robot

*** Keywords ***
Checkin Checkout

    Wait Until Element Is Visible    ${Hotel_icon}
    Click Element    ${Hotel_icon}

    Sleep    1s
    Click Element    ${check_in}

    # -------- Check-in : Tomorrow --------
    ${day_raw}=          Get Current Date    increment=1 day    result_format=%d
    ${day}=              Evaluate    str(int("${day_raw}"))
    ${month}=            Get Current Date    increment=1 day    result_format=%B
    ${year}=             Get Current Date    increment=1 day    result_format=%Y

    # -------- Check-out : Tomorrow + 30 days --------
    ${checkout_day_raw}=      Get Current Date    increment=31 day    result_format=%d
    ${checkout_day}=          Evaluate    str(int("${checkout_day_raw}"))
    ${checkout_month}=        Get Current Date    increment=31 day    result_format=%B
    ${checkout_year}=         Get Current Date    increment=31 day    result_format=%Y

    Wait Until Element Is Visible    xpath=//div[@role='dialog']    10s

    Click Element
    ...    xpath=//div[@role='button' and contains(@aria-label,'${month} ${day}, ${year}')]

    Sleep    1s

    Click Element
    ...    xpath=//div[@role='button' and contains(@aria-label,'${checkout_month} ${checkout_day}, ${checkout_year}')]

    Sleep    2s

    Click Element    ${search_icon}

    Sleep    2s
    Click Element    ${select_room}


#*** Settings ***
#Library    SeleniumLibrary
#Resource    ../../locators/hotel_locators.robot
##Resource    ../common_resources.robot
#
#*** Keywords ***
#Checkin Checkout
#    Wait Until Element Is Visible    ${Hotel_icon}
#    Click Element    ${Hotel_icon}
#    Sleep    1s
#    Click Element    ${check_in}
#    Sleep    1s
#    Click Element    ${date_27}
#    Sleep    1s
#    Press Keys    NONE    ENTER
#    Sleep    1s
#    Click Element    ${check_out}
#    Sleep    1s
#    Click Element    ${next_icon}
#    Sleep    1s
#    Click Element    ${date_27}
#    Sleep    1s
#    Press Keys    NONE    ENTER
#    Click Element    ${search_icon}
#    Sleep    2s
#    Click Element    ${select_room}
#    Sleep    2s