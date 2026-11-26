from dataclasses import dataclass


@dataclass
class Order:
    customer: int
    day: int


orders = [Order(day * 7 % 5, day) for day in range(200)]
orders.sort(key=lambda o: o.customer)
kept = all(a.customer != b.customer or a.day < b.day for a, b in zip(orders, orders[1:]))
print("kept" if kept else "scrambled")
