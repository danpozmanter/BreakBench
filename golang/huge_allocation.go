package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	buf := make([]byte, n)
	buf[n-1] = 1
	fmt.Println(len(buf))
}
