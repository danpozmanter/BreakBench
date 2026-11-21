package main

import "core:fmt"

Account :: struct {
	balance: int,
}

main :: proc() {
	accounts := [1]Account{{balance = 100}}
	for acct in accounts { // CONTROL! for &acct in accounts {
		acct.balance += 50
	}
	fmt.println(accounts[0].balance)
}
