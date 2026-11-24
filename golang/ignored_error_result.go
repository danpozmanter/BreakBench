package main

import (
	"fmt"
	"os"
)

func save(path string) error {
	return os.WriteFile(path, []byte("data"), 0o644)
}

func main() {
	save("/dev/null/out.txt") // CONTROL! if err := save("/dev/null/out.txt"); err != nil { fmt.Println("failed") } else { fmt.Println("saved") }
	fmt.Println("saved") // BREAK!
}
