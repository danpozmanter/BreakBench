fn main() {
    let xs = vec![1, 2, 3, 4, 5, 6];
    let evens = xs.iter().filter(|x| *x % 2 == 0);
    let total: i32 = evens.sum();
    let count = evens.count(); // BREAK!
    // CONTROL! let count = xs.iter().filter(|x| *x % 2 == 0).count();
    println!("{} {}", total, count);
}
