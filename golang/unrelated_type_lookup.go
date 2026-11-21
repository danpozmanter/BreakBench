package main

import (
	"fmt"
	"os"
	"slices"
)

func main() {
	ids := []int{10, 20, 30}
	id := os.Args[1]
	found := slices.Contains(ids, id) // CONTROL! var n int; fmt.Sscan(id, &n); found := slices.Contains(ids, n)
	if found {
		fmt.Println("found")
	} else {
		fmt.Println("missing")
	}
}
