use std::env;

fn main() {
    let count: usize = env::args().nth(1).unwrap().parse().unwrap();
    // CONTROL! if count > 1 << 27 { println!("too large"); return; }
    let size = count * 8;
    let mut records = vec![0u8; size];
    records[8] = 99;
    println!("stored");
}
