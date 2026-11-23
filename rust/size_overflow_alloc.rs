use std::env;

fn main() {
    let count: usize = env::args().nth(1).unwrap().parse().unwrap();
    let size = count * 8;
    let mut records = vec![0u8; size];
    records[8] = 99;
    println!("stored");
}
