import std::io;
import std::thread;

Mutex state_lock;
Mutex gate_lock;
bool claimed;
int winners;
int arrivals;

fn void rendezvous() {
    gate_lock.lock(); arrivals++; gate_lock.unlock();
    while (true) {
        gate_lock.lock(); bool open = arrivals == 2; gate_lock.unlock();
        if (open) break;
    }
}
fn int claim(void* arg) {
    state_lock.lock(); bool available = !claimed; state_lock.unlock(); // BREAK!
    // CONTROL! state_lock.lock(); bool available = !claimed; if (available) claimed = true; state_lock.unlock();
    rendezvous();
    if (available) { state_lock.lock(); claimed = true; winners++; state_lock.unlock(); }
    return 0;
}
fn int main(String[] args) {
    state_lock.init()!!; gate_lock.init()!!;
    Thread a; Thread b;
    a.create(&claim, null)!!; b.create(&claim, null)!!;
    (void)a.join(); (void)b.join();
    io::printfn("%d", winners);
    return 0;
}
