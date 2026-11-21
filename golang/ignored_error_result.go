package main

import (
	"fmt"
	"os"
)

func save(path string) error {
	return os.WriteFile(path, []byte("data"), 0o644)
}

func main() {
	save("/nonexistent/dir/out.txt")
	fmt.Println("saved")
}
