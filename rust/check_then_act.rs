use std::sync::{Arc, Barrier, Mutex};
use std::thread;

#[derive(Default)]
struct State {
    claimed: bool,
    winners: usize,
}

fn claim(state: Arc<Mutex<State>>, checked: Arc<Barrier>) {
    let available;
    {
        let s = state.lock().unwrap();
        available = !s.claimed; // BREAK!
    }
    // CONTROL! { let mut s = state.lock().unwrap(); available = !s.claimed; if available { s.claimed = true; } }
    checked.wait();
    if available {
        let mut s = state.lock().unwrap();
        s.claimed = true;
        s.winners += 1;
    }
}

fn main() {
    let state = Arc::new(Mutex::new(State::default()));
    let checked = Arc::new(Barrier::new(2));
    let a = {
        let s = state.clone();
        let b = checked.clone();
        thread::spawn(move || claim(s, b))
    };
    let b = {
        let s = state.clone();
        let c = checked.clone();
        thread::spawn(move || claim(s, c))
    };
    a.join().unwrap();
    b.join().unwrap();
    println!("{}", state.lock().unwrap().winners);
}
