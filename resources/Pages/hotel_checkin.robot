*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Checkin
    Wait Until Element Is Visible    (//span[contains(text(),"Hotels")])[1]    4s
    Click Element    (//span[contains(text(),"Hotels")])[1]
    Sleep    1s
    Click Element    xpath=(//span[@class="fieldValue___4a47d0"])[1]
    Sleep    1s
    Press Keys    NONE    Jaipur
    Sleep    3s
#    Click Element    xpath=(//span[@class="fieldValue___4a47d0"])[1]
#    Wait Until Element Is Visible    xpath=//ul    10s
    Press Keys    NONE    ARROW_DOWN
    Sleep    1s
    Press Keys    NONE    ENTER
    Sleep    1s

    Click Element    xpath=//button[contains(text(),"Search hotels")]
    Sleep    3s