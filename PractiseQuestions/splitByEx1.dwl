/*
Input-
{
"customerId": "cust1200",
"customerAddress": "12368 Morisville,Charlotte,NC,45710"
}
*/
%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> 
(key):value)