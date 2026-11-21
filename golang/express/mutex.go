// LEVEL: STD

package main

import (
	"fmt"
	"sync"
)

func main() {
	var lock sync.Mutex
	var wg sync.WaitGroup
	counter := 0
	for range 2 {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for range 100000 {
				lock.Lock()
				counter++
				lock.Unlock()
			}
		}()
	}
	wg.Wait()
	fmt.Println(counter)
}
