%dw 2.0
output application/json
---
payload map ((item, index) -> 
    item ++ "test": ((keysOf(item) zip  valuesOf(item)) map ((item, index) -> 
    item[0] ++" : " ++ item[1]
) joinBy  ",")
)