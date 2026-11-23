use std::env;
use std::fs::File;
use std::io::Read;

fn main() {
    let count: u64 = env::args().nth(1).unwrap().parse().unwrap();
    let mut source = File::open("/dev/zero").unwrap();
    let mut total: u64 = 0;
    for _ in 0..count {
        let mut message = vec![0u8; 4096];
        source.read_exact(&mut message).unwrap();
        total += message.len() as u64;
    }
    println!("{total}");
}
