use std::sync::atomic::{AtomicI64, Ordering};
use std::thread;

fn main() {
    let mut count = 0i64; // BREAK!
    let safe = AtomicI64::new(0);
    thread::scope(|s| {
        s.spawn(|| for _ in 0..1_000_000 { count += 1; }); // CONTROL! s.spawn(|| for _ in 0..1_000_000 { safe.fetch_add(1, Ordering::Relaxed); });
        s.spawn(|| for _ in 0..1_000_000 { count += 1; }); // CONTROL! s.spawn(|| for _ in 0..1_000_000 { safe.fetch_add(1, Ordering::Relaxed); });
    });
    println!("{}", count); // CONTROL! println!("{}", safe.load(Ordering::Relaxed));
}
