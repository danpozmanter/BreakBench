package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	// CONTROL! if n > 1<<30 { fmt.Println("too large"); return }
	buf := make([]byte, n)
	buf[n-1] = 1
	fmt.Println(len(buf))
}
