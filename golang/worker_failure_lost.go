package main

import (
	"fmt"
	"os"
	"strconv"
	"sync"
)

func main() {
	total := 0
	var wg sync.WaitGroup
	wg.Add(1)
	go func() {
		defer wg.Done()
		for _, a := range os.Args[1:] {
			n, err := strconv.Atoi(a)
			if err != nil {
				panic(err)
			}
			total += n
		}
	}()
	wg.Wait()
	fmt.Println("total", total)
}
