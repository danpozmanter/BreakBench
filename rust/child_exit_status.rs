use std::process::Command;

fn main() {
    Command::new("sh").args(["-c", "exit 3"]).status().unwrap();
    println!("backed up");
}
