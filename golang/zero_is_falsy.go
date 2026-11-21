package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	v, _ := strconv.Atoi(os.Args[1])
	qty := &v
	present := false
	if qty { // BREAK!
	// CONTROL! if qty != nil {
		present = true
	}
	if present {
		fmt.Printf("have %d\n", *qty)
	} else {
		fmt.Println("missing")
	}
}
