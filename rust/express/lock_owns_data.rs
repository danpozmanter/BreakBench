// LEVEL: STD

use std::sync::Mutex;

struct Ledger {
    debits: i64,
    credits: i64,
}

fn main() {
    let ledger = Mutex::new(Ledger { debits: 0, credits: 0 });
    std::thread::scope(|s| {
        for _ in 0..2 {
            s.spawn(|| {
                for _ in 0..1000 {
                    let mut l = ledger.lock().unwrap();
                    l.debits += 1;
                    l.credits += 1;
                }
            });
        }
    });
    let _unguarded = ledger.debits; // REJECT!
    let l = ledger.lock().unwrap();
    println!("{} {}", l.debits, l.credits);
}
