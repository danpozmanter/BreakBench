package main

import (
	"fmt"; "io"
	"os/exec"
)

func main() {
	cmd := exec.Command("sh", "-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234")
	stdout, err := cmd.StdoutPipe()
	if err != nil {
		panic(err)
	}
	if err := cmd.Start(); err != nil {
		panic(err)
	}
	message := make([]byte, 16)
	io.ReadFull(stdout, message)
	cmd.Wait()
	fmt.Println(string(message))
}
