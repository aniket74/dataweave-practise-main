%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    "atBeginningOfHourDateTime": atBeginningOfHour(|2022-12-02T19:28:00.351-03:00|),
    "atBeginningOfHourLocalDateTime": atBeginningOfHour(|2022-12-02T19:29:00.351|),
    "atBeginningOfHourLocalTime": atBeginningOfHour(|19:29:00.351|),
    "atBeginningOfHourTime": atBeginningOfHour(|19:29:00.351|)
}