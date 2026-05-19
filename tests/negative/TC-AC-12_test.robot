* Settings *
Resource     ../../resource/pages/TC-AC-12page.robot
Resource    ../../resource/common_resources.robot


Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

* Test Cases *

TC_AC-12 Add traveller with wrong gender
    [Documentation]    Test CASE 12
    [Tags]    negative



#    Set Global Variable    ${SOURCE_CITY}  Jaipur
#    Set Global Variable    ${DEST_CITY}  Jaipur
    Invalid user details   Delhi  Mumbai

