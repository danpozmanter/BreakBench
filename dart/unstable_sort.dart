class Order {
  final int customer;
  final int day;
  Order(this.customer, this.day);
}

void main() {
  final orders = List.generate(200, (day) => Order(day * 7 % 5, day));
  // UNDEFINED: List.sort is not guaranteed to be stable
  orders.sort((a, b) => a.customer.compareTo(b.customer)); // CONTROL! orders.sort((a, b) => a.customer != b.customer ? a.customer.compareTo(b.customer) : a.day.compareTo(b.day));
  var kept = true;
  for (var i = 1; i < orders.length; i++) {
    if (orders[i].customer == orders[i - 1].customer && orders[i].day < orders[i - 1].day) kept = false;
  }
  print(kept ? "kept" : "scrambled");
}
