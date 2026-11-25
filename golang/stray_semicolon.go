package main

import (
	"fmt"
	"os"
	"strconv"
)

func size(n int) string {
	label := "small"
	if n > 5; { // CONTROL! if n > 5 {
		label = "big"
	}
	return label
}

func main() {
	a, _ := strconv.Atoi(os.Args[1])
	b, _ := strconv.Atoi(os.Args[2])
	fmt.Println(size(a))
	fmt.Println(size(b))
}
