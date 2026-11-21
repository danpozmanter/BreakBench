package main

import (
	"fmt"
	"slices"
)

func main() {
	scores := []int{10, 9, 1}
	slices.Sort(scores)
	fmt.Println(scores[0], scores[1], scores[2])
}
