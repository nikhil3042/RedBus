*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Search Trains
    ## From destination
    Click Element    xpath=(//div[contains(@class,'placeHolderContainer')])[1]
    Log to Console    Clicking on the train search field

    Sleep    2s

    # Type directly into focused field
    Press Keys    NONE    jp
    Log To Console    Typing 'jp' into the search field
    Sleep    2s
    Press Keys    NONE    ARROW_DOWN
    Sleep    1s
    Press Keys    NONE    ENTER

    Sleep    3s

    ## To destination
    Press Keys    NONE    dli
    Log To Console    Typing 'dli' into the search field
    Sleep    2s
    Press Keys    NONE    ARROW_DOWN
    Sleep    1s
    Press Keys    NONE    ENTER

    Sleep    3s

    ## Search Button
    Click Element    xpath=//button[@class='primaryButton___aef317 searchButtonWrapper___5c2417 ']
    Log To Console    Clicking on the search button
    
    Sleep    3s

    ## Filtering results to sleeper
    Execute Javascript    window.scrollBy(0, 250)

    Mouse Over    //h2[text()='Filter results']
    Execute Javascript    window.scrollBy(0, 100)
    Click Element    xpath=(//div[@class='container___3fcd1e primary___a640a2 withoutSubtitle___d808d2 filterTitle___a5668a'])[2]
    Click Element    xpath=(//label[@class='customCheckbox___f5b33d '])[1]
    Log To Console    Filtering results to sleeper class