package main

import (
	"fmt"
	"os"
)

func main() {
	text, err := os.ReadFile("/nonexistent/bb.conf")
	if err != nil {
		fmt.Fprintln(os.Stderr, "config missing:", err)
		return // BREAK!
		// CONTROL! os.Exit(1)
	}
	fmt.Println(len(text))
}
