package main

import (
	"fmt"
	"sync"
	"time"
)

var (
	mu      sync.Mutex
	balance = 100
)

func charge(gate chan struct{}) {
	<-gate
	mu.Lock()
	defer mu.Unlock()
	balance -= 30
}

func main() {
	gate := make(chan struct{})
	done := make(chan struct{})
	var tasks sync.WaitGroup
	tasks.Go(func() {
		charge(gate)
		close(done)
	})
	select {
	case <-done:
	case <-time.After(100 * time.Millisecond):
		close(gate)
		charge(gate) // BREAK!
	}
	tasks.Wait()
	fmt.Println(balance)
}
