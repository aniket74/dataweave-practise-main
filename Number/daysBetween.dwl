%dw 2.0
output application/json
---
{ days : daysBetween('2021-10-01T23:57:59-03:00', '2022-09-01T23:57:59-03:00') }