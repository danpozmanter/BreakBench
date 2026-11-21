package main

import (
	"fmt"
	"sort"
)

func count(xs []int) int {
	sort.Ints(xs)
	return len(xs)
}

func main() {
	items := []int{3, 1, 2}
	count(items)
	fmt.Println(items[0])
}
