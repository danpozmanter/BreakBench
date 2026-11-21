// LEVEL: STD

use std::collections::BTreeMap;

fn main() {
    let m = BTreeMap::from([("c", 1), ("a", 2), ("b", 3)]);
    println!("{}", m.keys().copied().collect::<Vec<_>>().join(" "));
}
