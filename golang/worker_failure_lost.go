package main

import (
	"fmt"
	"os"
	"strconv"
	"sync"
)

func main() {
	total := 0
	// CONTROL! failed := false
	var wg sync.WaitGroup
	wg.Add(1)
	go func() {
		defer wg.Done()
		for _, a := range os.Args[1:] {
			n, err := strconv.Atoi(a)
			if err != nil {
				panic(err) // CONTROL! failed = true; return
			}
			total += n
		}
	}()
	wg.Wait()
	fmt.Println("total", total) // CONTROL! if failed { fmt.Println("failed") } else { fmt.Println("total", total) }
}
