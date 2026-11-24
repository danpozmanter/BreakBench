package main

import (
	"fmt"
	"slices"
	"strings"
)

func main() {
	xs := []int{1, 2, 2, 3}
	for _, x := range xs { // CONTROL! xs = slices.DeleteFunc(xs, func(x int) bool { return x == 2 })
		if x == 2 { // BREAK!
			pos := slices.Index(xs, x) // BREAK!
			xs = slices.Delete(xs, pos, pos+1) // BREAK!
		} // BREAK!
	} // BREAK!
	parts := make([]string, len(xs))
	for i, x := range xs {
		parts[i] = fmt.Sprint(x)
	}
	fmt.Println(strings.Join(parts, ","))
}
