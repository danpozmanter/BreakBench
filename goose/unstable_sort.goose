import std;

struct Order { customer: i64, day: i64 }

fn main() {
    var orders: Order[>..] = [];
    for day in 0..200 { orders.push(Order { customer: day * 7 % 5, day: day }); }
    // UNDEFINED: sort leaves the order of equal elements unspecified; stable_sort keeps it
    sort(orders) { a, b => a.customer < b.customer }; // CONTROL! stable_sort(orders) { a, b => a.customer < b.customer };
    var kept = true;
    for i in 1..orders.len {
        if orders[i].customer == orders[i - 1].customer && orders[i].day < orders[i - 1].day { kept = false; }
    }
    print(if kept { "kept" } else { "scrambled" });
}
