use std::sync::{Arc, Barrier, Mutex};
use std::thread;

fn transfer(first: Arc<Mutex<i64>>, second: Arc<Mutex<i64>>, gate: Arc<Barrier>) {
    let _g1 = first.lock().unwrap();
    gate.wait();
    let _g2 = second.lock().unwrap();
}

fn main() {
    let a = Arc::new(Mutex::new(0));
    let b = Arc::new(Mutex::new(0));
    let gate = Arc::new(Barrier::new(2));
    let (a1, b1, gate1) = (a.clone(), b.clone(), gate.clone());
    let t1 = thread::spawn(move || transfer(a1, b1, gate1));
    let t2 = thread::spawn(move || transfer(b, a, gate));
    t1.join().unwrap();
    t2.join().unwrap();
    println!("finished");
}
