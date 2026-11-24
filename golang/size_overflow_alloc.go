package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	count, err := strconv.ParseInt(os.Args[1], 10, 64)
	if err != nil {
		panic(err)
	}
	// CONTROL! if count > 1<<27 { fmt.Println("too large"); return }
	size := count * 8
	records := make([]byte, size)
	records[8] = 99
	fmt.Println("stored")
}
