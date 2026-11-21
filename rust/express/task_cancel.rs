// LEVEL: STD

use std::sync::atomic::{AtomicBool, Ordering};
use std::time::Duration;

fn main() {
    let cancelled = AtomicBool::new(false);
    std::thread::scope(|s| {
        s.spawn(|| while !cancelled.load(Ordering::Relaxed) { std::thread::sleep(Duration::from_millis(1)) });
        std::thread::sleep(Duration::from_millis(20));
        cancelled.store(true, Ordering::Relaxed);
    });
    println!("stopped");
}
