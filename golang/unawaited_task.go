package main

import (
	"fmt"
	"sync"
	"sync/atomic"
	"time"
)

func main() {
	var saved atomic.Int64
	var wg sync.WaitGroup
	wg.Add(1)
	go func() {
		defer wg.Done()
		time.Sleep(50 * time.Millisecond)
		saved.Add(1)
	}()
	fmt.Println(saved.Load()) // CONTROL! wg.Wait(); fmt.Println(saved.Load())
}
