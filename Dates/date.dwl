%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    newDate: date({year: 2022, month: 12, day: 2})
}