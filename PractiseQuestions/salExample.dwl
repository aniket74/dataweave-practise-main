/*Input Payload
{
    "Aniket": {
        "Salary": 320000,
        "Bonus": 2000,
        "Leaves": 5,
        "Balance Leaves": 12
    },
    "Mitesh": {
        "Salary": 310000,
        "Bonus": 2000,
        "Leaves": 7,
        "Balance Leaves": 10
    },
    "Ramesh": {
        "Salary": 220000,
        "Bonus": 4000,
        "Leaves": 9,
        "Balance Leaves": 8
    }
}
 Expected Output
 
[
  {
    "extid": "Aniket",
    "Salary": 320000,
    "Bonus": 2000,
    "Leaves": 5,
    "Balance Leaves": 12
  },
  {
    "extid": "Mitesh",
    "Salary": 310000,
    "Bonus": 2000,
    "Leaves": 7,
    "Balance Leaves": 10
  },
  {
    "extid": "Ramesh",
    "Salary": 220000,
    "Bonus": 4000,
    "Leaves": 9,
    "Balance Leaves": 8
  }
]*/

%dw 2.0
output application/json
---
{
"firstApproach": keysOf(payload) map ((item, index) -> 
{ "extId": item } ++ payload[(item)] as Object
),
"secondApproach":keysOf(payload) map ((item, index) -> 
{"extid" : item} ++ valuesOf(payload)[index] )

}