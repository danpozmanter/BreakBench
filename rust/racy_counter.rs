fn main() {
    let mut counter: i64 = 0;
    std::thread::scope(|s| {
        for _ in 0..8 {
            s.spawn(|| {
                for _ in 0..1_000_000 {
                    counter += 1; // BREAK!
                }
            });
        }
    });
    println!("{counter}");
}
