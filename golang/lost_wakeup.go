package main

import (
	"fmt"
	"sync"
)

func main() {
	var lock sync.Mutex
	woken := sync.NewCond(&lock)
	lock.Lock()
	woken.Signal()
	lock.Unlock()
	var wg sync.WaitGroup
	wg.Add(1)
	go func() {
		defer wg.Done()
		lock.Lock()
		woken.Wait()
		lock.Unlock()
		fmt.Println("done")
	}()
	wg.Wait()
}
