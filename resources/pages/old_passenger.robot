*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Old Passenger
    Mouse Over    xpath=//div[@class='srpCardWrap___64ed67']
    Click Element    xpath=//div[@class='srpCardWrap___64ed67']
    Log To Console    Clicking on the first train result

    Sleep    3s

    ## Entering IRCTC details
    Click Element    xpath=//input[@placeholder='IRCTC Username']

    Sleep    3s

    Input Text    xpath=//input[@id='usernameInput']    Bhavraj25
    Click Element    xpath=//button[text()='Check username']
    
    Sleep    2s
    
    Wait Until Element Is Visible
    ...    xpath=//div[@data-autoid='bottom-sheet']
    ...    10s
    Sleep    3s
    Click Element    xpath=//button[@aria-label='Close username verification']

    Sleep    2s

    ## Scrolling down to the passenger details section
    Wait Until Element Is Visible
    ...    xpath=//h3[text()='Select passengers']
    ...    10s

    Sleep    3s

    ${name_input}=    Get WebElement    xpath=//label[text()='Name']/following::input[1]
    Execute Javascript    arguments[0].scrollIntoView({block:'center'});    ARGUMENTS    ${name_input}
    Sleep    2s
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${name_input}
    Sleep    1s

    Input Text
    ...    xpath=//label[text()='Name']/following::input[1]
    ...    azad rathore

    Sleep    1s

    ## Gender
    Click Element    xpath=//div[@role='radio'][.//span[text()='Male']]
    Sleep    1s

    ## Age
    ${age_input}=    Get WebElement    xpath=//label[text()='Age']/following::input[1]
    Execute Javascript    arguments[0].scrollIntoView({block:'center'});    ARGUMENTS    ${age_input}
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${age_input}

    Input Text
    ...    xpath=//label[text()='Age']/following::input[1]
    ...    62
    
    Sleep    2s

    Wait Until Element Is Visible
    ...    xpath=//div[@class='srCitizenWrapper___a5bf59']
    ...    10s
    Log To Console    Concession not available for senior citizen
    
    Sleep    1s
    ${add_btn}=    Get WebElement    xpath=//button[text()='Add to passengers list']
    Execute Javascript    arguments[0].scrollIntoView({block:'center'});    ARGUMENTS    ${add_btn}
    Sleep    1s
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${add_btn}
    
    Sleep    1s
    ${contact_email}=    Get WebElement    xpath=//input[@id='email']
    Execute Javascript    arguments[0].scrollIntoView({block:'center'});    ARGUMENTS    ${contact_email}
    Sleep    1s
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${contact_email}

    Input Text
    ...    xpath=//input[@id='email']
    ...    ajjurathore@gmail.com

    Sleep    1s
    ${contact_phone}=    Get WebElement    xpath=//input[@id='phoneNumber']
    Execute Javascript    arguments[0].scrollIntoView({block:'center'});    ARGUMENTS    ${contact_phone}
    Sleep    1s
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${contact_phone}
    
    Input Text
    ...    xpath=//input[@id='phoneNumber']
    ...    9876543210

    Sleep    1s
    ${continue_btn}=    Get WebElement    xpath=//button[text()='Continue']
    Execute Javascript    arguments[0].scrollIntoView({block:'center'});    ARGUMENTS    ${continue_btn}
    Sleep    1s
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${continue_btn}
    
    Sleep    1s
    ${continue_btn2}=    Get WebElement    xpath=//button[text()='Continue without adding']
    Execute Javascript    arguments[0].scrollIntoView({block:'center'});    ARGUMENTS    ${continue_btn2}
    Sleep    1s
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${continue_btn2}

    Log To Console    Adding passengers done!

    Sleep    5s