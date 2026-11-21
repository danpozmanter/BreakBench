use std::fs::File;
use std::io::Read;

fn main() {
    let n: usize = std::env::args().nth(1).unwrap().parse().unwrap();
    std::fs::write("/tmp/bb_fd.txt", "x").unwrap();
    for _ in 0..n {
        let mut f = File::open("/tmp/bb_fd.txt").unwrap();
        let mut byte = [0u8; 1];
        f.read_exact(&mut byte).unwrap();
    }
    println!("done");
}
