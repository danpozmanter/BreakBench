fn main() {
    let readings = [10, 20, 30];
    let i: usize = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("{}", readings[i] - readings[i - 1]); // CONTROL! if i > 0 { println!("{}", readings[i] - readings[i - 1]); } else { println!("no previous"); }
}
