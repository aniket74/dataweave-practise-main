/*
Input - [
    {
        "orderId": 1,
        "quantity": 1200
    },
    {
        "orderId": 2,
        "quantity": 1400
    },
    {
        "orderId": 3,
        "quantity": 800
    },
    {
        "orderId": 4,
        "quantity": 400
    }
]

Expected Output -
[
    {
        "orderId": 1,
        "quantity": 999
    },
    {
        "orderId": 1,
        "quantity": 201
    },
    {
        "orderId": 2,
        "quantity": 999
    },
    {
        "orderId": 2,
        "quantity": 401
    },
    {
        "orderId": 3,
        "quantity": 800
    },
    {
        "orderId": 4,
        "quantity": 700
    }
]
*/
%dw 2.0
output application/json
var a = [999]
---
flatten(payload map ((item, index) -> 
if(item.quantity < 1000){
    orderId: item.orderId,
    quantity: item.quantity
} else a + (item.quantity - 999) map ({
    orderId: item.orderId,
    quantity: $
})))