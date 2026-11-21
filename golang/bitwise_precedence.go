package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	x, _ := strconv.Atoi(os.Args[1])
	even := x&1 == 0 // BREAK!
	// CONTROL! even := (x & 1) == 0
	fmt.Println(map[bool]string{true: "even", false: "odd"}[even])
}
