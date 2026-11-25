package main

import (
	"fmt"
	"os"
	"slices"
)

const lock = "/tmp/bb_scratch/run.lock"

func checkArgs() bool {
	if slices.Contains(os.Args[1:], "--version") {
		fmt.Println("1.0")
		os.Exit(0) // BREAK!
		// CONTROL! return true
	}
	return false
}

func main() {
	os.WriteFile(lock, nil, 0o644)
	defer os.Remove(lock)
	if checkArgs() {
		return
	}
	fmt.Println("working")
}
