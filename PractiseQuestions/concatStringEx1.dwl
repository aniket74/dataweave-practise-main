%dw 2.0
output application/json
---
{
"FirstSolution": ((payload pluck $$) map ((item, index) -> (item ++ " = " ++ payload[index] ++ "")) joinBy " AND ") ,
"SecondSolution": payload pluck ($$ ++ " = " ++ $) joinBy " AND ",
"ThirdSolution": ((payload mapObject ((value, key, index) ->
"s": (key) ++ " = " ++ (value))).*s) joinBy " AND ",
//Below script will check if value is empty
"FourthSolution": ((payload mapObject ((value, key, index) ->
"s": (key) ++ " = " ++ (if(value==null) "" else (value)))).*s) joinBy " AND "
}