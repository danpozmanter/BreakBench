package main

import (
	"fmt"
	"os"
)

func main() {
	text := os.Args[1]
	var counts [256]int
	for _, b := range []byte(text) {
		counts[b]++
	}
	high := 0
	for _, n := range counts[128:] {
		high += n
	}
	fmt.Println(high)
}
