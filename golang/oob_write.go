package main

import (
	"fmt"
	"os"
	"strconv"
)

type Frame struct {
	Buf   [4]int
	Guard int
}

func main() {
	f := Frame{Guard: 7}
	idx, _ := strconv.Atoi(os.Args[1])
	f.Buf[idx] = 99
	fmt.Println(f.Guard)
}
