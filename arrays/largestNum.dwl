%dw 2.0
output application/json
var firstNum = payload[0]
---
{
firstWay: { 
    "largest" : payload reduce((item,acc = firstNum)->if(item>acc)item else acc),
    "smallest": payload reduce((item,acc = firstNum)->if(item<acc)item else acc)
    },
secondWay: { 
    "smallet" : ([45,78,43,87,65] orderBy $)[0],
    "largest": ([45,78,43,87,65] orderBy -$)[0]
    }
}