// LEVEL: STD

fn main() {
    let mut slots = [0i64; 10];
    let (left, right) = slots.split_at_mut(5);
    std::thread::scope(|s| {
        s.spawn(|| for (i, x) in left.iter_mut().enumerate() { *x = i as i64 });
        s.spawn(|| for (i, x) in right.iter_mut().enumerate() { *x = 5 + i as i64 });
    });
    println!("{}", slots.iter().sum::<i64>());
}
