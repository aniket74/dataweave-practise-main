%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    newLocalTime: localTime({ hour: 16, minutes: 54, seconds:57})
}