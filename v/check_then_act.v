import sync

struct State {
mut:
    mu sync.Mutex
    claimed bool
    winners int
}

fn main() {
    mut state := &State{}
    ready := chan bool{cap: 2}
    release := chan bool{cap: 2}
    worker := fn [mut state, ready, release] () {
        mut available := false
        state.mu.lock()
        available = !state.claimed // BREAK!
        state.mu.unlock()
        // CONTROL! available = !state.claimed; if available { state.claimed = true }
        ready <- true
        _ = <-release
        if available {
            state.mu.lock(); state.claimed = true; state.winners++; state.mu.unlock()
        }
    }
    a := spawn worker()
    b := spawn worker()
    _ = <-ready; _ = <-ready
    release <- true; release <- true
    a.wait(); b.wait()
    println(state.winners)
}
