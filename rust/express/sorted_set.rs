// LEVEL: STD

use std::collections::BTreeSet;

fn main() {
    let s = BTreeSet::from([3, 1, 2]);
    println!("{}", s.iter().map(|v| v.to_string()).collect::<Vec<_>>().join(" "));
}
