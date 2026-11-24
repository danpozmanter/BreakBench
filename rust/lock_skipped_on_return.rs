use std::sync::Mutex;
use std::thread;

static BALANCE: Mutex<i64> = Mutex::new(100);

fn withdraw(amount: i64) {
    let mut balance = BALANCE.lock().unwrap();
    if amount > *balance {
        return;
    }
    *balance -= amount;
}

fn main() {
    withdraw(500);
    let worker = thread::spawn(|| withdraw(30));
    worker.join().unwrap();
    println!("{}", BALANCE.lock().unwrap());
}
