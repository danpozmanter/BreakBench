fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    let x: i64;
    if n > 5 {
        x = 10;
    }
    println!("{}", x); // BREAK!
    println!("{}", n);
}
