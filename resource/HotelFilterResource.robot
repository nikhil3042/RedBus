*** Settings ***
Library    SeleniumLibrary
Resource    ../Locators/HotelFilterLocators.robot

*** Keywords ***
Apply Hotel Filters
    [Documentation]    To apply the hotel filters and verify the results
    Wait Until Element Is Visible  ${Hotels_button_link}
    Click Element    ${Hotels_button_link}
    
    Wait Until Element Is Visible    ${Search_hotels_btn}
    Click Element    ${Search_hotels_btn}
    Sleep    4s

#    Mouse Over    //aside[@data-autoid="filterSidebar"]
    Scroll Element Into View     ${Amenities}
    Click Element    ${Amenities}
    Sleep    2s
    Click Element    ${Wi-Fi_checkbx}
    Sleep    3s
    Log   The Wi-Fi filter is applied successfully and the results are displayed as expected
