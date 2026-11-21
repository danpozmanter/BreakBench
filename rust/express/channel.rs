// LEVEL: STD

use std::sync::mpsc;

fn main() {
    let (tx, rx) = mpsc::channel();
    let worker = std::thread::spawn(move || for v in 1..=3 { tx.send(v).unwrap() });
    let got: Vec<String> = rx.iter().map(|v: i64| v.to_string()).collect();
    worker.join().unwrap();
    println!("{}", got.join(" "));
}
