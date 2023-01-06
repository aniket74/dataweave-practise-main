/*------INPUT-----
{
    "date": "6-1-2022"
}
-----OUTPUT-----
{
  "correctDate": "06-01-2022"
}
*/

%dw 2.0
output application/json
fun getCorrectDate(str)= ((str splitBy  "-") map ((item, index) -> 
if(sizeOf(item)<2) "0" ++ item
else item
)) joinBy  "-"
---
{
    "correctDate": getCorrectDate(payload.date)
}