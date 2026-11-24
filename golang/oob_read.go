package main

import (
	"fmt"
	"os"
	"strconv"
)

type Frame struct {
	Buf    [4]int
	Secret int
}

func main() {
	f := Frame{Buf: [4]int{1, 2, 3, 4}, Secret: 42}
	idx, _ := strconv.Atoi(os.Args[1])
	fmt.Println(f.Buf[idx]) // CONTROL! if idx >= 0 && idx < len(f.Buf) { fmt.Println(f.Buf[idx]) } else { fmt.Println("out of range") }
}
