struct Order {
    let customer: Int
    let day: Int
}

var orders = (0..<200).map { Order(customer: $0 * 7 % 5, day: $0) }
orders.sort { $0.customer < $1.customer }
let kept = zip(orders, orders.dropFirst()).allSatisfy { $0.customer != $1.customer || $0.day < $1.day }
print(kept ? "kept" : "scrambled")
