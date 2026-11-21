package main

import (
	"fmt"
	"sync"
)

type Ledger struct {
	mu      sync.Mutex
	debits  int
	credits int
}

func (l *Ledger) post() {
	l.mu.Lock()
	defer l.mu.Unlock()
	l.debits += 50
	if l.debits > 0 {
		panic("crash mid-update")
	}
	l.credits += 50
}

func main() {
	var l Ledger
	var wg sync.WaitGroup
	wg.Add(1)
	go func() {
		defer wg.Done()
		l.post()
	}()
	wg.Wait()
	l.mu.Lock()
	defer l.mu.Unlock()
	if l.debits == l.credits {
		fmt.Println("balanced")
	} else {
		fmt.Println("unbalanced")
	}
}
