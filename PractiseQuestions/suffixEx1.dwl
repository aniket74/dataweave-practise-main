/*
{
    "zipCode": "523122-4156"
    "pinCode": "52999-12345"
    "name": "ABC@k^rish*na%"
}

Expected Output- 
{
    "zipCode": 523122,
    "pinCode": 52999,
    "name": ABCkrishna
}
*/

%dw 2.0
import dw::core::Strings
output application/json
---
{
    "zipCode": (payload.zipCode splitBy  "-")[0],
    "pinCode": (payload.pinCode splitBy  "-")[0],
    "name": payload.name replace  (/[^a-zA-Z]/) with ""
}