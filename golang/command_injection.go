package main

import (
	"fmt"
	"os"
	"os/exec"
)

func main() {
	os.Remove("/tmp/bb_pwned")
	exec.Command("echo", os.Args[1]).Run()
	if _, err := os.Stat("/tmp/bb_pwned"); err == nil {
		fmt.Println("injected")
	} else {
		fmt.Println("safe")
	}
}
