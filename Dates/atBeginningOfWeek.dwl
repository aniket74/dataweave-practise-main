%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    atBeginningOfWeekDateTime: atBeginningOfWeek(|2022-12-02T19:29:02.351|),
    atBeginningOfWeekLocalDateTime: atBeginningOfWeek(|2022-12-02T19:29:02.351|),
    atBeginningOfWeekDate: atBeginningOfWeek(|2022-12-02|)
}