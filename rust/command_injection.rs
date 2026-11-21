use std::path::Path;
use std::process::Command;

fn main() {
    let msg = std::env::args().nth(1).unwrap();
    let _ = std::fs::remove_file("/tmp/bb_pwned");
    let _ = Command::new("echo").arg(&msg).output();
    println!("{}", if Path::new("/tmp/bb_pwned").exists() { "injected" } else { "safe" });
}
