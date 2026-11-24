package main

import (
	"fmt"
	"sync"
)

func main() {
	var lock sync.Mutex
	woken := sync.NewCond(&lock)
	// CONTROL! ready := false
	lock.Lock()
	woken.Signal() // CONTROL! ready = true; woken.Signal()
	lock.Unlock()
	var wg sync.WaitGroup
	wg.Add(1)
	go func() {
		defer wg.Done()
		lock.Lock()
		woken.Wait() // CONTROL! for !ready { woken.Wait() }
		lock.Unlock()
		fmt.Println("done")
	}()
	wg.Wait()
}
