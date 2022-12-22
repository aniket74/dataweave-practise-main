/*
Print day of the week -
Input - 
[
  {
    "dateTime": "2022-02-14T08:00:00",
    "event": "Breakfast @ cafe",
    "organizer": "ABC"
  },
  {
    "dateTime": "2022-02-14T08:00:00",
    "event": "Drink w/ friends",
    "organizer": "DEF"
  },
  {
    "dateTime": "2022-02-14T08:00:00",
    "event": "Football game",
    "organizer": "ABC"
  }
]

Expected output -
[
  {
    "dateTime": "2022-02-14T08:00:00",
    "event": "Breakfast @ cafe",
    "organizer": "ABC",
    "day": "Tue"
  },
  {
    "dateTime": "2022-02-14T08:00:00",
    "event": "Football game",
    "organizer": "ABC",
    "day": "Tue"
  }
]
*/
%dw 2.0
output application/json
var weekDays = ["Mon", "Tue", "Wed", "Thurs", "Fri", "Sat", "Sun"]
fun toWeekDay(date : String) = weekDays[(date as LocalDateTime).dayOfWeek]
---
payload filter ($.organizer=="ABC") map ((item, index) -> item ++ "day" : weekDays[((item.dateTime as DateTime).dayOfWeek)])