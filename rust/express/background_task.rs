// LEVEL: STD

use std::time::Duration;

fn main() {
    let task = std::thread::spawn(|| {
        std::thread::sleep(Duration::from_millis(50));
        7
    });
    println!("started");
    println!("{}", task.join().unwrap());
}
