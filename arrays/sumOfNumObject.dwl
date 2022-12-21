%dw 2.0
output application/json
import * from dw::core::Arrays
---
{
firstWay: valuesOf(payload mapObject ((value, key, index) -> value )) sumBy $,

secondWay: (payload.*x) reduce ((item, sum=0) -> sum + item.a +item.b),

thirdWay: flatten((payload.*x) map ((item, index) -> valuesOf(item) )) sumBy $
}