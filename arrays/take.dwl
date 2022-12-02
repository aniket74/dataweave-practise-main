%dw 2.0
import * from dw::core::Arrays
var users = ["Aniket", "Anirudha", "Swapnil"]
output application/json
---
take(users, 2)