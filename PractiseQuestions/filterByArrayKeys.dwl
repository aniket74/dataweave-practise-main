/* -----------------INPUT-------------------
[{
    "name": "shubham",
    "city": "kop",
    "id": 1234,
    "state": "MH"
},
{
    "name": "aniket",
    "city": "pune",
    "id": 56789,
    "state": "MH"
}] */

%dw 2.0
output application/json
var arr = ["name","id","state"]
---
payload map ((obj, objIndex) ->
{(arr map ((item, index) ->
    (item): obj[item]
))}
)

/*--------------OUTPUT--------
[
  {
    "name": "shubham",
    "id": 1234,
    "state": "MH"
  },
  {
    "name": "aniket",
    "id": 56789,
    "state": "MH"
  }
]*/