package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	os.WriteFile("/tmp/bb_fd.txt", []byte("x"), 0o644)
	for i := 0; i < n; i++ {
		f, err := os.Open("/tmp/bb_fd.txt")
		if err != nil {
			panic(err)
		}
		b := make([]byte, 1)
		f.Read(b)
	}
	fmt.Println("done")
}
