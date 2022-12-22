
%dw 2.0
output application/json
---
keysOf(payload) map ((item, index) ->
    {"extid": item} ++
    payload[(item)]
 )