package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	x, _ := strconv.Atoi(os.Args[1])
	label := "not one"
	if x = 1 { // BREAK!
	// CONTROL! if x == 1 {
		label = "one"
	}
	fmt.Println(label)
}
