%dw 2.0
import * from dw::core::Arrays
var users = [
    { id: "1", name: "Aniket"},
    { id: "2", name: "Anirudha"}
]
var products = [
    { ownerId: "1", name: "Dataweave"},
    { ownerId: "2", name: "Java"}
]
output application/json
---
join(users, products, (user) -> user.id, (product) -> product.ownerId)