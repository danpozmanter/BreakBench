// LEVEL: LANGUAGE

package main

import (
	"fmt"
	"sync"
)

func main() {
	var slots [10]int
	var wg sync.WaitGroup
	for _, start := range []int{0, 5} {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for i := start; i < start+5; i++ {
				slots[i] = i
			}
		}()
	}
	wg.Wait()
	sum := 0
	for _, x := range slots {
		sum += x
	}
	fmt.Println(sum)
}
