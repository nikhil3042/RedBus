*** Variables ***
${bus_tag}          xpath=//li[@class="lobListItem___1d3960"][1]
${source_from}      id=txtSource
${source_to}        id=txtDestination
${from_suggestion}  xpath=//ul[@id="C120_suggestion-wrap"]/li[1]
${to_suggestion}    xpath=//ul[@id="C120_suggestion-wrap"]/li[1]
${cal_input}        id=txtOnwardCalendar
${cal}              id=onward
${next_month}  xpath=//button[@class="calwid__btn-next-month"]
${search_buses}  xpath=//button[@class="D120_search_btn_v2 searchBuses"]