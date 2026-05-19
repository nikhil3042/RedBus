*** Settings ***
Resource  ../../resource/common_resources.robot
Resource  ../../resource/pages/tatkal_book_pages.robot

Suite Setup    Load Environment
Test Setup    Open Application
Test Teardown    Close Application
*** Test Cases ***
Check Price
    [Documentation]  Check the tatkal price and normal price of a train
    Check Tatkal Price   Jaipur  Udaipur
