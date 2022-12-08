%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    newLocalDateTime: localDateTime({year: 2022, month: 12, day: 3, hour: 16, minutes: 52, seconds: 45})
}