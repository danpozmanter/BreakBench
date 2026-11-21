// LEVEL: STD

use std::collections::HashSet;

fn main() {
    let s = HashSet::from([(1, 2)]);
    println!("{}", s.contains(&(1, 2)));
}
