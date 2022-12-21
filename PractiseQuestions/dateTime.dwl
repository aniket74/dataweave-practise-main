%dw 2.0
output application/json
var weekDays = ["Mon", "Tue", "Wed", "Thurs", "Fri", "Sat", "Sun"]
fun toWeekDay(date : String) = weekDays[(date as LocalDateTime).dayOfWeek]
---
payload filter ($.organizer=="ABC") map ((item, index) -> item ++ "day" : weekDays[((item.dateTime as DateTime).dayOfWeek)])