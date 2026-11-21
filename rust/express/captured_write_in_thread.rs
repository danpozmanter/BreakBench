// LEVEL: LANGUAGE

use std::sync::atomic::{AtomicI64, Ordering};
use std::thread;

fn main() {
    let count = AtomicI64::new(0);
    thread::scope(|s| {
        s.spawn(|| count.fetch_add(1, Ordering::SeqCst));
    });
    println!("{}", count.load(Ordering::SeqCst));
    let mut plain = 0; thread::spawn(|| plain += 1).join().unwrap(); // REJECT!
}
