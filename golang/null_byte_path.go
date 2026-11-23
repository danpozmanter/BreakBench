package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {
	os.MkdirAll("/tmp/bb_files", 0o755)
	os.WriteFile("/tmp/bb_files/report.txt", []byte("secret\n"), 0o644)

	name := "report.txt\x00.png"
	if !strings.HasSuffix(name, ".png") {
		fmt.Println("rejected")
		return
	}
	data, err := os.ReadFile("/tmp/bb_files/" + name)
	if err != nil {
		fmt.Println("rejected")
		return
	}
	fmt.Print(string(data))
}
