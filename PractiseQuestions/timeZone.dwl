%dw 2.0
output application/json
import java!java::time::ZoneId
---
ZoneId::getAvailableZoneIds()