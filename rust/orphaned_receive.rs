use std::sync::mpsc;
use std::thread;

fn main() {
    let (tx, rx) = mpsc::channel::<i64>();
    thread::spawn(move || {
        let n: i64 = "x".parse().unwrap(); // CONTROL! let Ok(n) = "x".parse::<i64>() else { return; };
        tx.send(n).unwrap();
    });
    println!("{}", rx.recv().unwrap()); // CONTROL! match rx.recv() { Ok(n) => println!("{}", n), Err(_) => println!("failed") }
}
