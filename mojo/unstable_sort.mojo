@fieldwise_init
struct Order(Copyable, Movable):
    var customer: Int
    var day: Int


def by_customer(a: Order, b: Order) -> Bool:
    return a.customer < b.customer


def main():
    var orders = List[Order]()
    for day in range(200):
        orders.append(Order(day * 7 % 5, day))
    # UNDEFINED: sort is unstable unless it is asked for stable=True
    sort(orders, by_customer)  # CONTROL! sort[stable=True](orders, by_customer)
    var kept = True
    for i in range(1, len(orders)):
        if orders[i].customer == orders[i - 1].customer and orders[i].day < orders[i - 1].day:
            kept = False
    print("kept" if kept else "scrambled")
