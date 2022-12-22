/*
Input Payload
 
{
  "FirstName": "Shrinivas",
  "LastName": "Reddy",
}

Expected output
 
{
  "FirstName": "shrinivas",
  "LastName": "reddy"
}
*/
%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> 
(key): lower(value))