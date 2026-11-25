use std::sync::mpsc;
use std::sync::{Arc, Condvar, Mutex};
use std::thread;
use std::time::Duration;

static BALANCE: Mutex<i64> = Mutex::new(100);

struct Gate {
    open: Mutex<bool>,
    opened: Condvar,
}

fn charge(gate: &Gate) {
    let mut open = gate.open.lock().unwrap();
    while !*open {
        open = gate.opened.wait(open).unwrap();
    }
    drop(open);
    *BALANCE.lock().unwrap() -= 30;
}

fn main() {
    let gate = Arc::new(Gate { open: Mutex::new(false), opened: Condvar::new() });
    let (done, finished) = mpsc::channel();
    let shared = Arc::clone(&gate);
    let attempt = thread::spawn(move || {
        charge(&shared);
        let _ = done.send(());
    });
    if finished.recv_timeout(Duration::from_millis(100)).is_err() {
        *gate.open.lock().unwrap() = true;
        gate.opened.notify_all();
        charge(&gate); // BREAK!
    }
    attempt.join().unwrap();
    println!("{}", BALANCE.lock().unwrap());
}
