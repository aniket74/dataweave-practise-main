%dw 2.0
import dw::core::Arrays
output application/json
var FirsOutput =  payload.Orders.items map ((item, index) -> (item.price) reduce $ + $$ )
---
{
"First": sum(FirsOutput) as Number  default  0,

"SecondMethod" : Orders: payload.Orders map((Order, index) -> Order mapObject ((value, key, index) -> 
if((key) as String == "total") (key): Order.items reduce ((item, accumulator=0) -> item.price + accumulator) 
else (key): value))
}