/*
Input
[
  {
    "Name": "Arun Shrivastava",
    "Age": 42,
    "Country": "India"
  }
]
 
//Expected Output
 
[
  {
    "Name": "Arun Shrivastava",
    "Age": 42,
    "Country": "India",
    "test": "Name: Arun Shrivastava, Age: 42, Country: India"
  }
]
*/
%dw 2.0
output application/json
---
{
"firstApproach": payload map ((item, index) -> 
item ++ "test": (keysOf(item) 
zip valuesOf(item)) map ((item, index) 
-> item[0] ++ ": " ++ item[1]) joinBy  ", "),

"secondApproach": payload map ($ ++ {
    test:( $ mapObject ((value, key, index) 
    -> k: key ++ ": " ++ value)).*k joinBy ", "
})
}