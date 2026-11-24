import std;
import os;

fn main() {
    write_file("/dev/full", "data\n"); // CONTROL! if !write_file("/dev/full", "data\n") { print("failed"); return; }
    print("saved");
}
