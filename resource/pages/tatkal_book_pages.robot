*** Settings ***
Library  SeleniumLibrary
Resource   ../../locaters/tatkal_price.robot


*** Keywords ***
Check Tatkal Price
    [Documentation]  Check the tatkal price and normal price of a train
    [Arguments]  ${SRC}  ${DST}
    Click Element  ${train_page_loc}
    Click Element  ${from_srch}
    Sleep  2s
    Press Keys  NONE   ${SRC}
    Sleep  2s
    Press Keys  NONE  ARROW_DOWN
    Press Keys  NONE  ENTER
    Sleep  2s
    Press Keys  NONE   ${DST}
    Sleep  2s
    Press Keys  NONE  ARROW_DOWN
    Press Keys  NONE  ENTER
    Sleep  2s
    Click Element  ${tom_train}
    Sleep  2s
    Click Element  ${srch_but}
    Sleep  2s
    Click Element  ${tatkal_button}
    Sleep  2s
    Page Should Contain Element   ${check_train}
    Sleep  5s
    ${price_tatkal}=  Get Text  ${price_tatkal}
    Click Element   ${nxt_date}
    Wait Until Element Is Visible    ${check_train}  10s
    ${normal_price}=  Get Text  ${normal_price}
    Log  The tatkal price is ${price_tatkal}
    Log  The normal price is ${normal_price}