package main

import (
    "fmt"
    "sync"
)

type State struct { mu sync.Mutex; claimed bool; winners int }

func claim(s *State, checked *sync.WaitGroup) {
    s.mu.Lock()
    available := !s.claimed // BREAK!
    s.mu.Unlock()
    // CONTROL! s.mu.Lock(); available := !s.claimed; if available { s.claimed = true }; s.mu.Unlock()
    checked.Done()
    checked.Wait()
    if available {
        s.mu.Lock(); s.claimed = true; s.winners++; s.mu.Unlock()
    }
}

func main() {
    s := &State{}
    var checked sync.WaitGroup
    checked.Add(2)
    var done sync.WaitGroup
    done.Add(2)
    go func(){ defer done.Done(); claim(s, &checked) }()
    go func(){ defer done.Done(); claim(s, &checked) }()
    done.Wait()
    fmt.Println(s.winners)
}
