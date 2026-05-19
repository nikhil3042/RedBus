*** Variables ***
${train_ticket_link}  xpath=//a[@href="https://www.redbus.in/railways"][1]
${train_status_button}  xpath=//span[text()="Live train status"]
${search_field}  xpath=//input[@placeholder="Enter train name or number"]
${search_button}  xpath=//button[text()="Check Status"]
${train_suggestion}  xpath=//div[@class="lts_solr_wrap_main"]//b[text()="12618"]
${current_station}  xpath=//div//img[@alt="current_station"]
${previous_station}  xpath=//div[@class="lts_run_sts_msg"]
${delay_time}  xpath=//div[@class="lts_running_status_wrap"]//div[@class="red_background"]
${running_status}  xpath=//div[@class="lts_running_status_wrap"]//div[@class="green_background"]
${last_station}  xpath=//div[@aria-label="ERNAKULAM JN on PLATFORM 3"]

