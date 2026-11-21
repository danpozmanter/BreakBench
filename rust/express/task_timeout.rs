// LEVEL: STD

use std::sync::mpsc;
use std::time::Duration;

fn main() {
    let (tx, rx) = mpsc::channel();
    std::thread::spawn(move || {
        std::thread::sleep(Duration::from_secs(5));
        let _ = tx.send(1);
    });
    match rx.recv_timeout(Duration::from_millis(100)) {
        Ok(_) => println!("done"),
        Err(_) => println!("timed out"),
    }
}
