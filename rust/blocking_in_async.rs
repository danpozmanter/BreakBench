use std::thread;
use std::time::{Duration, Instant};

fn main() {
    let start = Instant::now();
    let a = thread::spawn(|| thread::sleep(Duration::from_millis(500)));
    let b = thread::spawn(|| thread::sleep(Duration::from_millis(500)));
    a.join().unwrap();
    b.join().unwrap();
    println!("{}", if start.elapsed() < Duration::from_millis(800) { "concurrent" } else { "serial" });
}
