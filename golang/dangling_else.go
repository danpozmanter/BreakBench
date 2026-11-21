package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	a, b := n != 0, true
	r := "unset"
	if a {
		if b {
			r = "both"
		}
	} else {
		r = "not a"
	}
	fmt.Println(r)
}
