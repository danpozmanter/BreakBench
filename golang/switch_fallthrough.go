package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	var name string
	switch n {
	case 1:
		name = "one"
	case 2:
		name = "two"
	default:
		name = "other"
	}
	fmt.Println(name)
}
