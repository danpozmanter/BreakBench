package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	x, _ := strconv.ParseFloat(os.Args[1], 64)
	y, _ := strconv.ParseFloat(os.Args[2], 64)
	a := x + y
	if a == 0.3 { // CONTROL! if a-0.3 < 1e-9 && 0.3-a < 1e-9 {
		fmt.Println("equal")
	} else {
		fmt.Println("not equal")
	}
}
