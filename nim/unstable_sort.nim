import std/algorithm

type Order = object
  customer, day: int

var orders: seq[Order]
for day in 0 ..< 200:
  orders.add Order(customer: day * 7 mod 5, day: day)
orders.sort(proc (a, b: Order): int = cmp(a.customer, b.customer))
var kept = true
for i in 1 ..< orders.len:
  if orders[i].customer == orders[i - 1].customer and orders[i].day < orders[i - 1].day:
    kept = false
echo(if kept: "kept" else: "scrambled")
