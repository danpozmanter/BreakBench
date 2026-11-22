package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	f, err := os.Create("/dev/full")
	if err != nil {
		panic(err)
	}
	defer f.Close()
	w := bufio.NewWriter(f)
	defer w.Flush()
	fmt.Fprintln(w, "data")
	fmt.Println("saved")
}
