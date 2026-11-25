use std::{env, fs, process};

const LOCK: &str = "/tmp/bb_scratch/run.lock";

struct Lock;

impl Drop for Lock {
    fn drop(&mut self) {
        let _ = fs::remove_file(LOCK);
    }
}

fn check_args() -> bool {
    if env::args().any(|a| a == "--version") {
        println!("1.0");
        process::exit(0); // BREAK!
        // CONTROL! return true;
    }
    false
}

fn main() {
    fs::write(LOCK, "").unwrap();
    let _lock = Lock;
    if check_args() {
        return;
    }
    println!("working");
}
