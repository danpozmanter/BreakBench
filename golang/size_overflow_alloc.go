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
	size := count * 8
	records := make([]byte, size)
	records[8] = 99
	fmt.Println("stored")
}
