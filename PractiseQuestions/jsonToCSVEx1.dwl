%dw 2.0
output application/csv separator="|"
---
payload map ((item, index) -> 
item mapObject((value, key, index) -> 
if(typeOf(value) as String == "Array")  
if((key) as String == "ErrorMessage") 
(key): "Type":$(value.Type[0]), 
message: $(value.message[0]) " else (key): "id": 
$(value.id[0]) job: $(value.job[0]) " 
 else (key): value
 )
 )