%dw 2.0
output application/json
import firstWith from dw::core::Arrays
var users = [
    { name: "Aniket", lastName: "Bhosale"},
    { name: "Anirudha", lastName: "ABC"}
]
---
users firstWith ($.name == "Aniket")