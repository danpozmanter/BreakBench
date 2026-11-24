use std::sync::mpsc;
use std::thread;

fn main() {
    let (tx, rx) = mpsc::channel::<i64>();
    thread::spawn(move || {
        // parse answers a Result, so the worker checks it before sending.
        let Ok(n) = "x".parse::<i64>() else {
            return;
        };
        tx.send(n).unwrap();
    });
    // recv answers a Result, so the main thread checks it too.
    match rx.recv() {
        Ok(n) => println!("{n}"),
        Err(_) => println!("failed"),
    }
}
