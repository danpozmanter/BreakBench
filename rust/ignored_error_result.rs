use std::fs;
use std::io;

fn save(path: &str) -> io::Result<()> {
    fs::write(path, "data")
}

fn main() {
    save("/dev/null/out.txt"); // CONTROL! match save("/dev/null/out.txt") { Ok(()) => println!("saved"), Err(_) => println!("failed") }
    println!("saved"); // BREAK!
}
