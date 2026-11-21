package main

import (
	"fmt"
	"os"
)

func main() {
	status := "pending"
	if os.Args[1] == "ok" {
		status := "done" // CONTROL! status = "done"
		fmt.Fprintln(os.Stderr, "status:", status)
	}
	fmt.Println(status)
}
