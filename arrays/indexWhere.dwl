%dw 2.0
import * from dw::core::Arrays
output application/json
var users = ["Aniket", "Anirudha", "Swapnil"]
---
users indexWhere ((item) -> item startsWith  
"Sw")