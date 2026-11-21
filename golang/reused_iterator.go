package main

import (
	"fmt"
	"iter"
	"slices"
)

func filter(seq iter.Seq[int], keep func(int) bool) iter.Seq[int] {
	return func(yield func(int) bool) {
		for x := range seq {
			if keep(x) && !yield(x) {
				return
			}
		}
	}
}

func main() {
	xs := []int{1, 2, 3, 4, 5, 6}
	evens := filter(slices.Values(xs), func(x int) bool { return x%2 == 0 })
	total, count := 0, 0
	for x := range evens {
		total += x
	}
	for range evens {
		count++
	}
	fmt.Println(total, count)
}
