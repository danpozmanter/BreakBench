fn main() {
    let xs = vec![1, 2, 3];
    let i: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    let less = i < xs.len(); // BREAK!
    // CONTROL! let less = i < xs.len() as i64;
    println!("{}", if less { "less" } else { "not less" });
}
