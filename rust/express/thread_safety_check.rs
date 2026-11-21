// LEVEL: STD

use std::sync::Mutex;

fn main() {
    let list = Mutex::new(Vec::new());
    let mut unguarded: Vec<i64> = Vec::new(); // REJECT!
    std::thread::scope(|s| {
        for i in 0..2 {
            let list = &list;
            s.spawn(move || list.lock().unwrap().push(i));
        }
        s.spawn(|| unguarded.push(1)); // REJECT!
        s.spawn(|| unguarded.push(2)); // REJECT!
    });
    println!("{}", list.lock().unwrap().len());
}
