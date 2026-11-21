// LEVEL: STD

use std::process::Command;

fn main() {
    let out = Command::new("echo").arg("hi; touch /tmp/bb_x").output().unwrap();
    print!("{}", String::from_utf8_lossy(&out.stdout));
}
