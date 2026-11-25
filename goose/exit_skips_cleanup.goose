import std;
import os;

fn check_args() -> bool {
    for arg in args() {
        if compare(arg, "--version") == 0 {
            print("1.0");
            exit(0); // BREAK!
            // CONTROL! return true;
        }
    }
    return false;
}

fn main() {
    let lock = "/tmp/bb_scratch/run.lock";
    write_file(lock, "");
    defer delete_file(lock);
    if check_args() { return; }
    print("working");
}
