// LEVEL: LANGUAGE

use std::cell::Cell; // REJECT!

const fn square(x: i64) -> i64 {
    x * x
}

const fn square_counted(hits: &Cell<i64>, x: i64) -> i64 { hits.set(hits.get() + 1); x * x } // REJECT!

fn main() {
    println!("{}", square(7));
}
