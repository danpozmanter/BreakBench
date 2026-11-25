package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	a, _ := strconv.ParseInt(os.Args[1], 10, 64)
	b, _ := strconv.ParseInt(os.Args[2], 10, 64)
	fmt.Println(a / b) // CONTROL! fmt.Println((0 - uint64(a)) / (0 - uint64(b)))
}
