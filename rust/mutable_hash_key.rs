use std::collections::HashSet;

fn main() {
    let mut seen = HashSet::new();
    let mut key = vec![1, 2];
    seen.insert(key.clone());
    key[0] = 9;
    for e in &seen {
        println!("{}", if seen.contains(e) { "found" } else { "lost" });
    }
}
