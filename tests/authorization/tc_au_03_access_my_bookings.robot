*** Settings ***
Resource    ../../resource/common_resources.robot
Resource    ../../locators/redbus_locators.robot

Suite Setup       Load Environment
Test Setup        Open Application
Test Teardown     Close Application


*** Test Cases ***

TC-AU-03 Access My Bookings Without Login
    Go To    ${BASE_URL}/mybookings

    Page Should Contain Element    ${LOGIN_TEXT}

    Page Should Not Contain Element    ${BOOKING_SECTION}


    Page Should Contain    Oops

