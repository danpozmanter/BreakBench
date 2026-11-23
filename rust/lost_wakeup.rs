use std::sync::{Arc, Condvar, Mutex};
use std::thread;

fn main() {
    let pair = Arc::new((Mutex::new(()), Condvar::new()));
    {
        let (lock, woken) = &*pair;
        let _guard = lock.lock().unwrap();
        woken.notify_one();
    }
    let shared = Arc::clone(&pair);
    let worker = thread::spawn(move || {
        let (lock, woken) = &*shared;
        let guard = lock.lock().unwrap();
        let _guard = woken.wait(guard).unwrap();
        println!("done");
    });
    worker.join().unwrap();
}
