// LEVEL: STD

package main

import (
	"fmt"
	"sync"
)

func main() {
	var m sync.Map
	var wg sync.WaitGroup
	for t := range 4 {
		wg.Add(1)
		go func() {
			defer wg.Done()
			for k := range 1000 {
				m.Store(t*1000+k, k)
			}
		}()
	}
	wg.Wait()
	n := 0
	m.Range(func(_, _ any) bool { n++; return true })
	fmt.Println(n)
}
