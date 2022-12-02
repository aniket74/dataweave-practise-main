%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    "atBeginningOfDayDateTime": atBeginningOfDay(|2022-12-02T19:20:00.351-03:00|),
    "atBeginningOfDayLocalDateTime": atBeginningOfDay(|2022-12-02T19:20:00.351-03:00|)
}