use std::sync::mpsc;
use std::thread;

fn main() {
    let (tx, rx) = mpsc::channel::<i64>();
    thread::spawn(move || {
        let n: i64 = "x".parse().unwrap();
        tx.send(n).unwrap();
    });
    println!("{}", rx.recv().unwrap());
}
