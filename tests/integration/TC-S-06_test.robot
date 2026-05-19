* Settings *
Resource     ../../resource/pages/TC-S-06_page.robot
Resource    ../../resource/common_resources.robot


Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

* Test Cases *

TC-S-06 Search results load time
    [Documentation]    Test CASE 6
    [Tags]    integration



#    Set Global Variable    ${SOURCE_CITY}  Jaipur
#    Set Global Variable    ${DEST_CITY}  Jaipur
    Search results load time  Delhi  Mumbai

