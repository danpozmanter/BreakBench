struct Order {
	customer int
	day      int
}

fn main() {
	mut orders := []Order{len: 200, init: Order{
		customer: index * 7 % 5
		day:      index
	}}
	// UNDEFINED: sort_with_compare leaves the order of equal elements unspecified
	orders.sort_with_compare(fn (a &Order, b &Order) int { // BREAK!
		return a.customer - b.customer // BREAK!
	}) // BREAK!
	// CONTROL! orders.sort_with_compare(fn (a &Order, b &Order) int {
		// CONTROL! return if a.customer != b.customer { a.customer - b.customer } else { a.day - b.day }
	// CONTROL! })
	mut kept := true
	for i in 1 .. orders.len {
		if orders[i].customer == orders[i - 1].customer && orders[i].day < orders[i - 1].day {
			kept = false
		}
	}
	println(if kept { 'kept' } else { 'scrambled' })
}
