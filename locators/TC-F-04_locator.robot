*** Variables ***

${bus_button}  xpath=//a[@class="lobContainer___a18dd8 selected___b1106a"]
${from}  xpath=(//input[@type="text"])[1]
${to}  xpath=(//input[@type="text"])[2]
${date}  xpath=//span[@class="icon icon-calender-new iconcustom D120_icon_input_v2"]
${search_buses}  xpath=//button[contains(@class,'searchBuses')]
${from_suggestion}  xpath=//ul[@id="C120_suggestion-wrap"]/li[1]
${to_suggestion}    xpath=//ul[@id="C120_suggestion-wrap"]/li[1]
${cal_input}    id=txtOnwardCalendar
${cal}     id=onward


${filter1}  xpath=(//div[@class="label___a1fd16 "])[8]
${filter2}  xpath=(//div[@class="label___a1fd16 "])[10]
${filter3}  xpath=(//div[@class="label___a1fd16 "])[3]
