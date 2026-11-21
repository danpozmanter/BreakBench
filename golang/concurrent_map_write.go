package main

import (
	"fmt"
	"sync"
)

func main() {
	m := map[int]int{}
	var wg sync.WaitGroup
	for t := 0; t < 8; t++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for k := 0; k < 100000; k++ {
				m[t*100000+k] = k
			}
		}()
	}
	wg.Wait()
	fmt.Println(len(m))
}
