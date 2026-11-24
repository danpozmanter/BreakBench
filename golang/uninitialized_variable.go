package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	var x int // CONTROL! x := 0
	if n > 5 {
		x = 10
	}
	fmt.Println(x)
}
