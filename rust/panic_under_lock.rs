use std::sync::Mutex;

struct Ledger {
    debits: i64,
    credits: i64,
}

fn main() {
    let ledger = Mutex::new(Ledger { debits: 0, credits: 0 });
    std::thread::scope(|s| {
        let worker = s.spawn(|| {
            let mut l = ledger.lock().unwrap();
            l.debits += 50;
            if l.debits > 0 {
                panic!("crash mid-update"); // CONTROL! l.debits -= 50; drop(l); panic!("crash mid-update");
            }
            l.credits += 50;
        });
        if worker.join().is_err() {
            eprintln!("worker failed");
        }
    });
    let l = ledger.lock().unwrap();
    println!("{}", if l.debits == l.credits { "balanced" } else { "unbalanced" });
}
