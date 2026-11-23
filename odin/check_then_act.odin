package main
import "core:fmt"
import "core:sync"
import "core:thread"

state_lock, gate_lock: sync.Mutex
claimed: bool
winners, arrivals: int

claim :: proc() {
    available: bool
    sync.mutex_lock(&state_lock)
    available = !claimed // BREAK!
    sync.mutex_unlock(&state_lock)
    // CONTROL! available = !claimed; if available do claimed = true
    sync.mutex_lock(&gate_lock); arrivals += 1; sync.mutex_unlock(&gate_lock)
    for {
        sync.mutex_lock(&gate_lock); open := arrivals == 2; sync.mutex_unlock(&gate_lock)
        if open do break
    }
    if available {
        sync.mutex_lock(&state_lock); claimed = true; winners += 1; sync.mutex_unlock(&state_lock)
    }
}

main :: proc() {
    t1 := thread.create_and_start(claim)
    t2 := thread.create_and_start(claim)
    thread.join(t1); thread.join(t2)
    fmt.println(winners)
}
