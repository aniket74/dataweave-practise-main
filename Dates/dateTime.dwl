%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    newDateTime: dateTime({year: 2022, month: 12, day: 2, hour: 20, minutes: 23, seconds: 40, timeZone: |-03:00|})
}