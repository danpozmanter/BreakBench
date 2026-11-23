package main

import (
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	count, err := strconv.Atoi(os.Args[1])
	if err != nil {
		panic(err)
	}
	source, err := os.Open("/dev/zero")
	if err != nil {
		panic(err)
	}
	defer source.Close()
	total := 0
	for i := 0; i < count; i++ {
		message := make([]byte, 4096)
		n, err := io.ReadFull(source, message)
		if err != nil {
			panic(err)
		}
		total += n
	}
	fmt.Println(total)
}
