use std::collections::HashMap;

fn main() {
    let mut map: HashMap<i64, i64> = HashMap::new();
    std::thread::scope(|s| {
        for t in 0..8i64 {
            s.spawn(|| {
                for k in 0..100_000i64 {
                    map.insert(t * 100_000 + k, k); // BREAK!
                }
            });
        }
    });
    map.insert(0, 0);
    println!("{}", map.len());
}
