package main

import (
	"fmt"
	"sync"
	"time"
)

func transfer(first, second *sync.Mutex, wg *sync.WaitGroup) {
	defer wg.Done()
	first.Lock()
	defer first.Unlock()
	time.Sleep(100 * time.Millisecond)
	second.Lock()
	defer second.Unlock()
}

func main() {
	var a, b sync.Mutex
	var wg sync.WaitGroup
	wg.Add(2)
	go transfer(&a, &b, &wg)
	go transfer(&b, &a, &wg)
	wg.Wait()
	fmt.Println("finished")
}
