%dw 2.0
output application/json
---
{
firstWay: payload map((item, index) -> { "designation": item.designation, (index): item pluck ((value, key, index) -> (key): (value))}),
secondWay: payload map ((item, index) -> (item.designation): (index): item)
}