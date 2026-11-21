package main

import (
	"fmt"
	"slices"
	"strings"
)

func main() {
	xs := []int{1, 2, 2, 3}
	for _, x := range xs {
		if x == 2 {
			pos := slices.Index(xs, x)
			xs = slices.Delete(xs, pos, pos+1)
		}
	}
	parts := make([]string, len(xs))
	for i, x := range xs {
		parts[i] = fmt.Sprint(x)
	}
	fmt.Println(strings.Join(parts, ","))
}
