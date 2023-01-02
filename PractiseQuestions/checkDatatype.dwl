/*----Input-----
{
"num": 30
}
// == Dont check datatype only check value
//~= Check value as well as Datatype both side
----OUTPUT ----
{
"result->1": false,
"result->2": true,
"result->3": true
}*/

%dw 2.0
output application/json
---
{
"result->1": payload.num == "30",
"result->2": payload.num == 30,
"result->3": payload.num ~= 30
}