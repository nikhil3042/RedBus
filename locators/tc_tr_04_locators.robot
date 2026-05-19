*** Variables ***
${train_ticket_link}  xpath=//a[@href="https://www.redbus.in/railways"][1]
${boarding_point_field}  xpath=//div[text()="From"]
${destination_point_field}  xpath=//div[text()="To"]
${date_day_after}  xpath=//button[@aria-label="Day After"]
${search_button}  xpath=//button[@aria-label="Search Trains"]
${class_selection}  xpath=//div//h3[text()="Ticket class"]
${3a_option}  xpath=//div[text()="AC 3 Tier (3A)"]
${3a_assert}  xpath=//div[contains(@aria-label, "Class: 3A")]
