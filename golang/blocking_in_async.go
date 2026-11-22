package main

import (
	"fmt"
	"sync"
	"time"
)

func main() {
	start := time.Now()
	var wg sync.WaitGroup
	for range 2 {
		wg.Add(1)
		go func() {
			time.Sleep(500 * time.Millisecond)
			wg.Done()
		}()
	}
	wg.Wait()
	if time.Since(start) < 800*time.Millisecond {
		fmt.Println("concurrent")
	} else {
		fmt.Println("serial")
	}
}
