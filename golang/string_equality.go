package main

import (
	"fmt"
	"os"
)

func main() {
	s := "ab" + os.Args[1]
	if s == "abc" {
		fmt.Println("equal")
	} else {
		fmt.Println("different")
	}
}
