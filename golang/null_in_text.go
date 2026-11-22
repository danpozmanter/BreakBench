package main

import (
	"fmt"
	"os"
	"strconv"
)

func findName(id int) *string {
	if id == 1 {
		name := "alice"
		return &name
	}
	return nil
}

func main() {
	id, _ := strconv.Atoi(os.Args[1])
	name := findName(id)
	fmt.Printf("hello, %s\n", name) // CONTROL! if name == nil { fmt.Println("hello, nobody") } else { fmt.Printf("hello, %s\n", *name) }
}
