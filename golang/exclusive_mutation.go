package main

import "fmt"

type Account struct{ Balance int }

func transfer(from, to *Account, amount int) {
	// CONTROL! if from == to { return }
	newFrom := from.Balance - amount
	newTo := to.Balance + amount
	from.Balance = newFrom
	to.Balance = newTo
}

func main() {
	a := Account{100}
	transfer(&a, &a, 30)
	fmt.Println(a.Balance)
}
