// LEVEL: STD

use std::sync::Mutex;

fn main() {
    let counter = Mutex::new(0i64);
    std::thread::scope(|s| {
        for _ in 0..2 {
            s.spawn(|| for _ in 0..100_000 { *counter.lock().unwrap() += 1 });
        }
    });
    println!("{}", counter.into_inner().unwrap());
}
