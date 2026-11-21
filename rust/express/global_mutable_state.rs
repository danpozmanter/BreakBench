// LEVEL: LANGUAGE

use std::sync::atomic::{AtomicI64, Ordering};

static HITS: AtomicI64 = AtomicI64::new(0);
static mut PLAIN: i64 = 0; // REJECT!

fn hit() {
    HITS.fetch_add(1, Ordering::SeqCst);
}

fn bad() { PLAIN += 1; } // REJECT!

fn main() {
    hit();
    hit();
    println!("{}", HITS.load(Ordering::SeqCst));
}
