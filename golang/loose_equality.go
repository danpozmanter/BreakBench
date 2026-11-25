package main

import (
	"fmt"
	"os"
)

func main() {
	code := os.Args[1]
	if code == 0 { // CONTROL! if code == "0" {
		fmt.Println("same")
	} else {
		fmt.Println("different")
	}
}
