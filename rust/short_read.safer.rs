use std::io::Read;
use std::process::{Command, Stdio};

fn main() {
    let mut child = Command::new("sh")
        .args(["-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234"])
        .stdout(Stdio::piped())
        .spawn()
        .unwrap();
    let mut stdout = child.stdout.take().unwrap();
    let mut message = [0u8; 16];
    stdout.read_exact(&mut message).unwrap();
    child.wait().unwrap();
    println!("{}", String::from_utf8_lossy(&message));
}
