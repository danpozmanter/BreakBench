// LEVEL: STD

use std::collections::HashSet;

fn main() {
    let a: f64 = "NaN".parse().unwrap();
    let b: f64 = "NaN".parse().unwrap();
    let mut floats = HashSet::new(); floats.insert(a); // REJECT!
    let mut bits = HashSet::new();
    bits.insert(a.to_bits());
    println!("{}", if bits.contains(&b.to_bits()) { "found" } else { "missing" });
}
