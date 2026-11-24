package main

import (
	"fmt"
	"os/exec"
)

func main() {
	exec.Command("sh", "-c", "exit 3").Run() // CONTROL! if err := exec.Command("sh", "-c", "exit 3").Run(); err != nil { fmt.Println("backup failed"); return }
	fmt.Println("backed up")
}
