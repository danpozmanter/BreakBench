package main

import (
	"fmt"
	"os"
	"slices"
	"strconv"
)

func main() {
	var xs []int
	for _, a := range os.Args[1:] {
		n, _ := strconv.Atoi(a)
		xs = append(xs, n)
	}
	fmt.Println(slices.Max(xs) + 1)
}
