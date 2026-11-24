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
	defer w.Flush() // BREAK!
	fmt.Fprintln(w, "data") // CONTROL! fmt.Fprintln(w, "data"); if err := w.Flush(); err != nil { fmt.Println("failed"); return }
	fmt.Println("saved")
}
