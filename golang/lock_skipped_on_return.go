package main

import (
	"fmt"
	"sync"
)

var (
	mu      sync.Mutex
	balance = 100
)

func withdraw(amount int) {
	mu.Lock()
	if amount > balance {
		return // CONTROL! mu.Unlock(); return
	}
	balance -= amount
	mu.Unlock()
}

func main() {
	withdraw(500)
	var wg sync.WaitGroup
	wg.Add(1)
	go func() {
		defer wg.Done()
		withdraw(30)
	}()
	wg.Wait()
	fmt.Println(balance)
}
