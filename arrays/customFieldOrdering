//reorder each json object in data array according to the fields in fields array
%dw 2.0
output application/json
var fields = ['FirstName', 'LastName', 'PhoneNo', 'EmpID', 'Location', 'Email', 'ContactPreference']
var data = [
{
    "EmpID": "EMP1234",
    "Address": "24 Main Square, Pune",
    "PhoneNo": "1234567890",
    "FirstName": "Aniket",
    "Location": "Pune",
    "ContactPreference": "Phone",
    "Email": "aniket@gmail.com",
    "LastName": "Bhosale"
},
{
    "EmpID": "EMP1235",
    "Address": "24 Circuit House, Pune",
    "PhoneNo": "1234567890",
    "FirstName": "Swapnil",
    "Location": "Pune",
    "ContactPreference": "Phone",
    "Email": "swapnil@gmail.com",
    "LastName": "Sapkal"
}]
---
data map ((item, index) -> {
    (fields map ( ($) : item[$]
    ))}
)
