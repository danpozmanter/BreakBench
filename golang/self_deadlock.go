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
	mu.Lock()
	deposit(10)
	mu.Unlock()
	fmt.Println("done")
}
