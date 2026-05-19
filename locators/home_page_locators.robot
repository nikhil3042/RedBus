*** Variables ***
${TRAIN_TAB}    xpath=//span[text()='Train tickets']
${SOURCE_FIELD}    xpath=//div[@id="rails-search-widget-source"]
${DESTINATION_FIELD}    xpath=(//div[@class="srcDest___776779"])[2]
${SEARCH_BUTTON}    xpath=//button[@class="primaryButton___aef317 searchButtonWrapper___5c2417 "]

${PNR}    xpath=//span[text()="Check PNR status"]
${PNR_VALUE}    xpath=//input[@id="pnrInput"]
${CHECK_PNR}    xpath=//button[contains(text(),'Check status')]
