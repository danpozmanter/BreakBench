use std::fs;
use std::io;

fn save(path: &str) -> io::Result<()> {
    fs::write(path, "data")
}

fn main() {
    save("/nonexistent/dir/out.txt");
    println!("saved");
}
