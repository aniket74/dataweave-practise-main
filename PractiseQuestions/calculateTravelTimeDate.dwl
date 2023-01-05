/* ------ payload-------
[{

"ticketNo": "T101",

"trainName": "Chiching",

"origin": "Loserville",

"destination": "Awesomeville",

"travelHours": 34,

"leavingDate": "12-12-2020",

"startTime": 1200

},
{

"ticketNo": "T101",

"trainName": "Chiching",

"origin": "Loserville",

"destination": "Awesomeville",

"travelHours": 48,

"leavingDate": "12-12-2020",

"startTime": 1200

}] */

%dw 2.0
output application/json

fun getDateTime(str,time)= (((str as LocalDateTime{format:"dd-MM-yyyyHHmm"} as DateTime) + time*3600) as DateTime)
---
payload map ((item, index) -> 
item mapObject ((value, key, index) ->
    if((key)~="startTime") {
        (key): value,
        "arrivalDate": getDateTime(item.leavingDate ++ item.startTime , item.travelHours) as DateTime{format:"dd-MM-yyyy"},
         "arrivalTime": getDateTime(item.leavingDate ++ item.startTime , item.travelHours) as Time{format:"HHmm"}
    }
    else (key): value
 )
)
/*
[
  {
    "ticketNo": "T101",
    "trainName": "Chiching",
    "origin": "Loserville",
    "destination": "Awesomeville",
    "travelHours": 34,
    "leavingDate": "12-12-2020",
    "startTime": 1200,
    "arrivalDate": "13-12-2020",
    "arrivalTime": "2200"
  },
  {
    "ticketNo": "T101",
    "trainName": "Chiching",
    "origin": "Loserville",
    "destination": "Awesomeville",
    "travelHours": 48,
    "leavingDate": "12-12-2020",
    "startTime": 1200,
    "arrivalDate": "14-12-2020",
    "arrivalTime": "1200"
  }
]

*/