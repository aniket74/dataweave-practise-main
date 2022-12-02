%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    atBeginningOfYearDateTime: atBeginningOfYear(|2022-12-02T19:29:02.351|),
    atBeginningOfYearLocalDateTime: atBeginningOfYear(|2022-12-02T19:29:02.351|),
    atBeginningOfYearDate: atBeginningOfYear(|2022-12-02|)
}