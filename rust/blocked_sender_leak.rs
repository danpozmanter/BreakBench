use std::sync::mpsc;
use std::thread::{self, JoinHandle};

fn first_answer() -> (i64, Vec<JoinHandle<()>>) {
    let (tx, rx) = mpsc::channel();
    let workers = (0..2)
        .map(|_| {
            let tx = tx.clone();
            // The receiver may be gone when the second answer is sent; nobody needs it then.
            thread::spawn(move || {
                let _ = tx.send(42);
            })
        })
        .collect();
    (rx.recv().unwrap(), workers)
}

fn main() {
    let (answer, workers) = first_answer();
    println!("{answer}");
    for worker in workers {
        worker.join().unwrap();
    }
    println!("done");
}
