package main

import (
	"cmp"
	"fmt"
	"slices"
)

type Order struct{ Customer, Day int }

func main() {
	orders := make([]Order, 200)
	for day := range orders {
		orders[day] = Order{day * 7 % 5, day}
	}
	// UNDEFINED: slices.SortFunc is not guaranteed to keep equal elements in order
	slices.SortFunc(orders, func(a, b Order) int { return cmp.Compare(a.Customer, b.Customer) }) // CONTROL! slices.SortStableFunc(orders, func(a, b Order) int { return cmp.Compare(a.Customer, b.Customer) })
	kept := true
	for i := 1; i < len(orders); i++ {
		if orders[i].Customer == orders[i-1].Customer && orders[i].Day < orders[i-1].Day {
			kept = false
		}
	}
	if kept {
		fmt.Println("kept")
	} else {
		fmt.Println("scrambled")
	}
}
