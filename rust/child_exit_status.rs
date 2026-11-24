use std::process::Command;

fn main() {
    Command::new("sh").args(["-c", "exit 3"]).status().unwrap(); // CONTROL! if !Command::new("sh").args(["-c", "exit 3"]).status().unwrap().success() { println!("backup failed"); return; }
    println!("backed up");
}
