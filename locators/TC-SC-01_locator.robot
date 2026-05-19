*** Variables ***

${view_seat}  xpath=(//button[@class="primaryButton___3262c2 viewSeatsBtn___3f5f2a withAnimation___369432"])[2]
${cancel_button}  xpath=(//button[@aria-label="Close"])[2]
${seat}  xpath=//div[contains(@aria-label,"seat status available") and @aria-pressed="false"]