/*Input -
{
  "a": [
    "PS",
    "PS"
  ],
  "a": [
    "SP"
  ],
  "a": [
    "PS",
    "LP"
  ]
}
Print Selected if PS or SP and not LP
Expected Output -
{
  "Selected": {
    "a": [
      "PS",
      "PS"
    ]
  },
  "Selected": {
    "a": [
      "SP"
    ]
  },
  "Not selected": {
    "a": [
      "PS",
      "LP"
    ]
  }
}
*/
%dw 2.0
output application/json
---
payload mapObject((value, key, index) -> 
if(((value contains "PS") or (value contains "SP")) and not (value contains "LP")) "Selected": (key) : value else "Not selected" : (key) : value
)