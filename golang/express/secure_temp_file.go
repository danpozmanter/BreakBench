// LEVEL: STD

package main

import (
	"fmt"
	"io"
	"os"
)

func main() {
	f, err := os.CreateTemp("", "bb-*")
	if err != nil {
		panic(err)
	}
	defer os.Remove(f.Name())
	if _, err := f.WriteString("ok"); err != nil {
		panic(err)
	}
	if _, err := f.Seek(0, io.SeekStart); err != nil {
		panic(err)
	}
	data, err := io.ReadAll(f)
	if err != nil {
		panic(err)
	}
	fmt.Println(string(data))
}
