package main

import (
	"fmt"
	"sync"
)

func transfer(first, second *sync.Mutex, wg *sync.WaitGroup, ready *sync.WaitGroup) {
	defer wg.Done()
	first.Lock()
	defer first.Unlock()
	ready.Done()
	ready.Wait()
	second.Lock()
	defer second.Unlock()
}

func main() {
	var a, b sync.Mutex
	var wg sync.WaitGroup
	var ready sync.WaitGroup
	wg.Add(2)
	ready.Add(2)
	go transfer(&a, &b, &wg, &ready)
	go transfer(&b, &a, &wg, &ready)
	wg.Wait()
	fmt.Println("finished")
}
