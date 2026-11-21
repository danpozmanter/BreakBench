// LEVEL: STD

use std::collections::BTreeMap;

fn main() {
    let mut counts = BTreeMap::new();
    for w in ["a", "b", "a"] { *counts.entry(w).or_insert(0) += 1; }
    println!("a={} b={}", counts["a"], counts["b"]);
}
