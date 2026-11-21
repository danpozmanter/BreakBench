package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	f, err := os.Create("/tmp/bb_close.txt")
	if err != nil {
		log.Fatal(err)
	}
	if _, err := f.WriteString("a"); err != nil {
		log.Fatal(err)
	}
	if err := f.Close(); err != nil {
		log.Fatal(err)
	}
	if _, err := f.WriteString("b"); err != nil {
		log.Fatal(err)
	}
	fmt.Println("ok")
}
