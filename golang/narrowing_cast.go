package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	v, _ := strconv.Atoi(os.Args[1])
	// CONTROL! if v < 0 || v > 255 { fmt.Println("out of range"); return }
	b := uint8(v)
	fmt.Println(b)
}
