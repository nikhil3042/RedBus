*** Settings ***
Library  SeleniumLibrary
Resource  ../../locators/tc_ht_04_locators.robot

*** Keywords ***
Navigating to Hotels
    [Documentation]  Navigating to hotels page
    Click Element    ${hotels_page}
    Log To Console  Navigating to hotels page

Searching for hotels
    [Documentation]  Searching for hotels in a city
    Click Element    ${search_button}
    Sleep    5s

Filtering price range
    [Documentation]  Applying price range filter
    Click Element    ${price_filter}
    Sleep    3s
    Click Element    ${price_range_0_1000}
    Sleep    2s
    Click Element    ${price_range_1000_1500}
    Sleep    2s
    Click Element    ${sort_price}
    Sleep    5s
    Log To Console  Price range filter applied

Verifying price filter applied
    [Documentation]  Verifying that the price filter is applied correctly
    ${previous_count}=    Set Variable    -1
    ${current_count}=     Set Variable    0

    FOR    ${index}    IN RANGE    20
        Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
        Sleep    1s
        ${prices}=    Get WebElements    ${price_row}
        ${current_count}=    Get Length    ${prices}
        Exit For Loop If    ${current_count} == ${previous_count}
        ${previous_count}=    Set Variable    ${current_count}
    END

    ${prices}=    Get WebElements    ${price_row}
    ${count}=     Get Length         ${prices}
    Should Be True     ${count} > 0
    ...                msg=No hotels found — filter not working!

    FOR    ${price_element}    IN    @{prices}
        ${price_text}=    Get Text    ${price_element}
        ${price}=         Convert To Number    ${price_text.replace("₹", "").replace(",", "")}
        Should Be True     ${price} <= 1500
        ...                msg=Filter broken! Found hotel with price: ₹${price}
    END
    Log To Console  All ${count} hotels verified within price range
