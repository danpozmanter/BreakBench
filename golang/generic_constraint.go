package main

import (
	"fmt"
	"slices"
)

type Point struct{ X, Y int }

func main() {
	xs := []int{3, 1, 2}
	slices.Sort(xs)
	ps := []Point{{1, 2}}; slices.Sort(ps) // BREAK!
	fmt.Println(xs[0])
}
