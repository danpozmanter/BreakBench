use std::collections::HashMap;

fn main() {
    let m = HashMap::from([("a", 1), ("a", 2)]); // CONTROL! let m = HashMap::from([("a", 1), ("b", 2)]);
    println!("{}", m.len());
}
