%dw 2.0
import * from dw::core::Arrays
output application/json
var users = ["Aniekt", "Anirudha", "Swapnil"]
---
indexOf(users, "Anirudha")