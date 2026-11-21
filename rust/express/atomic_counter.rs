// LEVEL: STD

use std::sync::atomic::{AtomicI64, Ordering};

fn main() {
    let counter = AtomicI64::new(0);
    std::thread::scope(|s| {
        for _ in 0..2 {
            s.spawn(|| for _ in 0..100_000 { counter.fetch_add(1, Ordering::Relaxed); });
        }
    });
    println!("{}", counter.load(Ordering::Relaxed));
}
