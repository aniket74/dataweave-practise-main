%dw 2.0
output application/json
---
{a : "b", a : "b", A : "b", a : "B"} distinctBy (value) -> { "unique" : value }

//[0, 1, 2, 3, 3, 2, 1, 4] distinctBy (value) -> { "unique" : value }
