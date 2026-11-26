package main

import "core:fmt"
import "core:slice"

Order :: struct {
	customer: int,
	day:      int,
}

main :: proc() {
	orders: [200]Order
	for &o, day in orders {
		o = Order{day * 7 % 5, day}
	}
	// UNDEFINED: slice.sort_by is not guaranteed to keep equal elements in order
	slice.sort_by(orders[:], proc(a, b: Order) -> bool { return a.customer < b.customer }) // CONTROL! slice.stable_sort_by(orders[:], proc(a, b: Order) -> bool { return a.customer < b.customer })
	kept := true
	for i in 1 ..< len(orders) {
		if orders[i].customer == orders[i - 1].customer && orders[i].day < orders[i - 1].day {
			kept = false
		}
	}
	fmt.println("kept" if kept else "scrambled")
}
