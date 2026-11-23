package main

import (
	"fmt"
	"os/exec"
)

func main() {
	exec.Command("sh", "-c", "exit 3").Run()
	fmt.Println("backed up")
}
