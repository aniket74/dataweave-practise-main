/*
Check decade is there or not -
Input -
[{
"name" : "Gaurav",
"Fname": "Gaurav Channe",
"Age": "30"
},{
"name" : "Gaurav2",
"Fname": "Gaurav2 Channe",
"Age": "32"
},{
"name" : "Gaurav3",
"Fname": "Gaurav3 Channe",
"Age": "33"
}]

Output -
[
  {
    "name": "Gaurav",
    "Fname": "Gaurav Channe",
    "Age": "30",
    "Decade": "Three"
  },
  {
    "name": "Gaurav2",
    "Fname": "Gaurav2 Channe",
    "Age": "32"
  },
  {
    "name": "Gaurav3",
    "Fname": "Gaurav3 Channe",
    "Age": "33"
  }
]
*/
%dw 2.0
output application/json
---
payload map ((item, index) -> item update {
case .Decade! if (item.Age == "30")-> "Three"
})