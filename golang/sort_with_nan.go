package main

import (
	"fmt"
	"math"
	"slices"
)

func main() {
	xs := []float64{5, math.NaN(), 3, 1, math.NaN(), 4, 2}
	slices.Sort(xs)
	prev := math.Inf(-1)
	ordered := true
	for _, x := range xs {
		if math.IsNaN(x) {
			continue
		}
		if x < prev {
			ordered = false
		}
		prev = x
	}
	if ordered {
		fmt.Println("ordered")
	} else {
		fmt.Println("unordered")
	}
}
