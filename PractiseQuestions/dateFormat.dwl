%dw 2.0
output application/json
---
payload map () -> ($.date replace '/' with "-") as Date {format: "MM-dd-yyyy"} as String {format: "yyyy-MM-dd"}