package main

import (
	"fmt"
	"os"
	"strconv"
)

func isOdd(n int) bool {
	return n%2 == 1 // CONTROL! return n%2 != 0
}

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	if isOdd(n) {
		fmt.Println("odd")
	} else {
		fmt.Println("even")
	}
}
