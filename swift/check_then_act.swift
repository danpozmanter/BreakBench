import Dispatch
import Synchronization

struct State { var claimed = false; var winners = 0 }
let state = Mutex(State())
let checked = DispatchGroup()
checked.enter(); checked.enter()

func claim() {
    let available = state.withLock { !$0.claimed } // BREAK!
    // CONTROL! let available = state.withLock { value in let result = !value.claimed; if result { value.claimed = true }; return result }
    checked.leave()
    checked.wait()
    if available {
        state.withLock { $0.claimed = true; $0.winners += 1 }
    }
}
let done = DispatchGroup()
DispatchQueue.global().async(group: done, execute: claim)
DispatchQueue.global().async(group: done, execute: claim)
done.wait()
print(state.withLock { $0.winners })
