use std::sync::Mutex;

static BALANCE: Mutex<i64> = Mutex::new(0);

fn deposit(amount: i64) {
    let mut b = BALANCE.lock().unwrap();
    *b += amount;
}

fn main() {
    let _guard = BALANCE.lock().unwrap();
    deposit(10);
    println!("done");
}
