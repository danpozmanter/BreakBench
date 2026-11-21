use std::sync::atomic::{AtomicI64, Ordering};
use std::sync::Arc;
use std::thread;
use std::time::Duration;

fn main() {
    let saved = Arc::new(AtomicI64::new(0));
    let counter = Arc::clone(&saved);
    let task = thread::spawn(move || {
        thread::sleep(Duration::from_millis(50));
        counter.fetch_add(1, Ordering::SeqCst);
    }); // CONTROL! }); task.join().unwrap();
    println!("{}", saved.load(Ordering::SeqCst));
}
