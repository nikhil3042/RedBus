*** Variables ***
${train_button_link}  xpath=//a[@href="https://www.redbus.in/railways"]
${Status_btn}=  xpath=//a[@href="/railways/train-running-status?from=Rail Home"]
${trainno_ipbox}=  xpath=//input[@placeholder="Enter train name or number"]
${first_option}=  xpath=(//div[@class="lts_solr_wrap_main"]//div[@class="lts_solr_wrap"])[1]
${check_status_btn}=  xpath=//button[contains(text(),'Check Status')]