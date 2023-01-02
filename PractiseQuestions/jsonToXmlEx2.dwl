/*
Input -
{
    "action": "U",
    "tab": "",
    "data": [
        {
            "Mandatory": 200,
            "Region": "NA"
        },
        {
            "Mandatory": 200,
            "Region": "NA"
        }
    ],
    "highLevelGroup": ""
}

Expected Output - 
<?xml version='1.0' encoding='windows-1252'?>
<VALUE_TAB>
  <item>
    <FIELD_NAME>Mandatory</FIELD_NAME>
    <FIELD_VALUE>200</FIELD_VALUE>
  </item>
  <item>
    <FIELD_NAME>Region</FIELD_NAME>
    <FIELD_VALUE>NA</FIELD_VALUE>
  </item>
  <item>
    <FIELD_NAME>Mandatory</FIELD_NAME>
    <FIELD_VALUE>200</FIELD_VALUE>
  </item>
  <item>
    <FIELD_NAME>Region</FIELD_NAME>
    <FIELD_VALUE>NA</FIELD_VALUE>
  </item>
</VALUE_TAB>
*/

%dw 2.0
output application/xml
---
VALUE_TAB: {(payload.data map ($ mapObject ((value, key, index) -> 
item: {
    FIELD_NAME: key,
    FIELD_VALUE: value
})))}