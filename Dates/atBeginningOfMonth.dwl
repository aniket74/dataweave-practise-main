%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    "atBeginningOfMonthDateTime": atBeginningOfMonth(|2022-12-02T19:29:02.351-03:00|),
    "atBeginningOfMonthLocalDateTime": atBeginningOfMonth(|2022-12-02T19:29:02.351|),
    "atBeginningOfMonthDate": atBeginningOfMonth(|2022-12-02|),
}