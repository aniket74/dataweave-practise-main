/*
Merge arrays by excluding same variables
Input
{
"arr1": [1,2,3,4],
"arr2": [4,5,6,2]
}
Output
[1,2,3,4,5,6]*/

%dw 2.0
output application/json
---
flatten(payload.arr1 ++ payload.arr2) distinctBy $