package main

import (
	"fmt"
	"os"
)

func main() {
	ready := os.Args[1] == "yes"
	approved := os.Args[2] == "yes"
	ok := ready && approved
	if ok {
		fmt.Println("go")
	} else {
		fmt.Println("wait")
	}
}
