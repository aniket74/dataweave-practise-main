/*
Convert given date format to YYYY-MM-DD
Input - 
[
  {
    "date": "01-25-2022"
  },
  {
    "date": "07/27/2022"
  },
  {
    "date": "12-05-2015"
  },
  {
    "date": "05/22/2012"
  }
]

Expected Output - 
[
  "2022-01-25",
  "2022-07-27",
  "2015-12-05",
  "2012-05-22"
]
*/
%dw 2.0
output application/json
---
payload map () -> ($.date replace '/' with "-") as Date {format: "MM-dd-yyyy"} as String {format: "yyyy-MM-dd"}