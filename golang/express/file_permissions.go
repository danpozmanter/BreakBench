// LEVEL: STD

package main

import (
	"fmt"
	"os"
)

func main() {
	path := "/tmp/bb_perm.txt"
	os.Remove(path)
	f, err := os.OpenFile(path, os.O_CREATE|os.O_EXCL|os.O_WRONLY, 0o600)
	if err != nil {
		panic(err)
	}
	f.Close()
	info, err := os.Stat(path)
	if err != nil {
		panic(err)
	}
	fmt.Printf("%o\n", info.Mode().Perm())
	os.Remove(path)
}
