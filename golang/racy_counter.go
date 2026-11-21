package main

import (
	"fmt"
	"sync"
)

func main() {
	count := 0
	var wg sync.WaitGroup
	for range 2 {
		wg.Add(1)
		go func() {
			for range 1_000_000 {
				count++
			}
			wg.Done()
		}()
	}
	wg.Wait()
	fmt.Println(count)
}
