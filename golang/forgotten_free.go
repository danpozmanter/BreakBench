package main

import (
	"fmt"
	"os"
	"strconv"
)

type Rec struct{ data [4096]byte }

var last *Rec

func main() {
	n, _ := strconv.Atoi(os.Args[1])
	for range n {
		rec := &Rec{}
		for i := range rec.data {
			rec.data[i] = 1
		}
		last = rec
	}
	fmt.Println("done")
}
