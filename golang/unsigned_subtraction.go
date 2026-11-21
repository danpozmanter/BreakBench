package main

import (
	"fmt"
	"os"
)

const header = 5

func main() {
	message := os.Args[1]
	payload := len(message) - header
	if payload < 0 {
		fmt.Println("short")
	} else {
		fmt.Println(payload)
	}
}
