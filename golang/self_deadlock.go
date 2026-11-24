package main

import (
	"fmt"
	"sync"
)

var mu sync.Mutex
var balance int

func deposit(amount int) {
	mu.Lock()
	defer mu.Unlock()
	balance += amount
}

func main() {
	mu.Lock() // BREAK!
	deposit(10)
	mu.Unlock() // BREAK!
	fmt.Println("done")
}
