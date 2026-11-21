use std::sync::mpsc;
use std::thread;

fn main() {
    let rounds: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    for i in 0..rounds {
        let (tx, rx) = mpsc::channel();
        for w in 0..2 {
            let tx = tx.clone();
            thread::spawn(move || {
                let _ = tx.send(vec![i + w; 8192]);
            });
        }
        let _first = rx.recv().unwrap();
    }
    println!("done");
}
