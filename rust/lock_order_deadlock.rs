use std::sync::{Arc, Mutex};
use std::thread;
use std::time::Duration;

fn transfer(first: Arc<Mutex<i64>>, second: Arc<Mutex<i64>>) {
    let _g1 = first.lock().unwrap();
    thread::sleep(Duration::from_millis(100));
    let _g2 = second.lock().unwrap();
}

fn main() {
    let a = Arc::new(Mutex::new(0));
    let b = Arc::new(Mutex::new(0));
    let (a1, b1) = (a.clone(), b.clone());
    let t1 = thread::spawn(move || transfer(a1, b1));
    let t2 = thread::spawn(move || transfer(b, a));
    t1.join().unwrap();
    t2.join().unwrap();
    println!("finished");
}
