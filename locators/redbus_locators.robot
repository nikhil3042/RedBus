*** Variables ***

# Login
${ACCOUNT_ICON}          xpath=//button[@aria-label='Account']
${LOGIN_SIGNUP_BTN}      xpath=//button[@aria-label='Log in']
${MOBILE_INPUT}          xpath=//input[@type='tel']
${RECAPTCHA_IFRAME}      //iframe[@title='reCAPTCHA']
${CAPTCHA_CHECKBOX}      //div[@class='recaptcha-checkbox-border']
${CONTINUE_BTN}          xpath=//button[@aria-label='Continue']
${OTP_INPUT}             xpath=(//input[contains(@class,'otpInput')])[1]
${VERIFY_BTN}            xpath=//button[@aria-label='Verify OTP']

# My Booking
${LOGIN_TEXT}            xpath=//*[contains(text(),'Login')]
${BOOKING_SECTION}       xpath=//*[contains(text(),'Booking Details')]

# PNR Search
${PNR_INPUT}             xpath=//input[contains(@placeholder,'PNR')]
${SEARCH_BTN}            xpath=//button[contains(text(),'Search')]

# Error Messages
${ACCESS_DENIED_TEXT}    xpath=//*[contains(text(),'Access denied')]
${AUTH_ERROR_TEXT}       xpath=//*[contains(text(),'Authorization error')]

${SAVED_TRAVELLER_OPTION}     xpath=//span[contains(text(),'Saved Travellers')]
${DELETE_TRAVELLER_BTN}      xpath=(//button[contains(text(),'Delete')])[1]
${CONFIRM_DELETE_BTN}        xpath=//button[contains(text(),'Confirm')]
${DELETED_TRAVELLER_NAME}    xpath=//div[contains(text(),'Rahul Sharma')]


${FROM_INPUT}      xpath=(//input[contains(@id,'src')])[1]
${TO_INPUT}        xpath=(//input[contains(@id,'dest')])[1]
${DATE_FIELD}           xpath=//div[contains(@class,'dateInputWrapper')]
# Look for any element with 'disabled' in its class within the date picker
${PAST_DATE}             xpath=//*[contains(@class,'disabled')][1]

# Suggestions (use aria attributes for reliability)
${FROM_SUGGESTION_FIRST}    xpath=//div[@role='option'][1]
${TO_SUGGESTION_FIRST}      xpath=//div[@role='option'][1]

