package main

import "core:fmt"

Account :: struct { balance: int }

transfer :: proc(from, to: ^Account, amount: int) {
	// CONTROL! if from == to do return
	new_from := from.balance - amount
	new_to := to.balance + amount
	from.balance = new_from
	to.balance = new_to
}

main :: proc() {
	a := Account{100}
	transfer(&a, &a, 30)
	fmt.println(a.balance)
}
