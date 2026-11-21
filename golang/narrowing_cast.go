package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	v, _ := strconv.Atoi(os.Args[1])
	b := uint8(v)
	fmt.Println(b)
}
