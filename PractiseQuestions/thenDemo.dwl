/*
Then demo with few examples
*/
%dw 2.0
output application/json
---
{
"chainResult": ["abc", "def"] reduce ((item, acc) -> item ++ acc) then ((result) -> sizeOf(result)),
"refResult": ["abc", "def"] map ((item, index) -> upper(item)) then { name: $[0], lastName: $[1], length: sizeOf($)
},
"onNullReturnNull": [] reduce ((item,acc) -> item ++ acc) then((result) -> sizeOf(result))
}