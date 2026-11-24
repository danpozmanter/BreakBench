package main

import (
	"fmt"
	"sync"
)

func main() {
	counter := 0
	var wg sync.WaitGroup
	for range 8 {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for range 1000000 {
				counter++
			}
		}()
	}
	wg.Wait()
	fmt.Println(counter)
}
