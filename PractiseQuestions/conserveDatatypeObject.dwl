/*XML to JSON and conserve datatype of the variables -

Input XML Payload

<flow>
	<handler>
		<price>10</price>
		<item>rice</item>
		<VALUE>3434</VALUE>
		<flag>true</flag>
	</handler>
</flow>


Expected output

{
  "flow": {
    "handler": {
      "price": 10,
      "item": "rice",
      "VALUE": 3434,
      "flag": true
    }
  }
}*/


%dw 2.0
output application/json
import isNumeric from dw::core::Strings
import * from dw::Runtime
fun convertPayload (anInput) = 
anInput match
{
	//case is Array -> anInput map (value,index)-> convertPayload(value)
	case is Object -> anInput mapObject (value,key,index) -> (key): convertPayload(value)
	else -> if (isNumeric(anInput)) anInput as Number
            else if (anInput == "false" or anInput == "true") anInput as Boolean
			else try(() -> anInput as Number) orElse anInput
}
---
//below line prints datatype of the variables used in the object
{
	"dataTypes": convertPayload(payload.flow.handler) as Object mapObject((value, key, index) -> (key): typeOf(value)),
	"value": convertPayload(payload) //this converts the given payload xml to json by preserving the datatypes used
}