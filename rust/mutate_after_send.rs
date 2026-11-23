use std::sync::mpsc;
use std::thread;

fn main() {
    let (list_tx, list_rx) = mpsc::channel::<Vec<i64>>();
    let (go_tx, go_rx) = mpsc::channel::<()>();
    let worker = thread::spawn(move || {
        let received = list_rx.recv().unwrap();
        go_rx.recv().unwrap();
        println!("{}", received[0]);
    });
    let mut list = vec![1, 2, 3];
    list_tx.send(list).unwrap();
    list[0] = 99; // BREAK!
    // CONTROL! list = vec![99, 2, 3]; drop(list);
    go_tx.send(()).unwrap();
    worker.join().unwrap();
}
