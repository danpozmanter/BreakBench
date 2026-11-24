import os;

fn save(path: const u8[:]) -> bool {
    return write_file(path, "data");
}

fn main() {
    save("/dev/null/out.txt"); // CONTROL! let ok = save("/dev/null/out.txt"); if ok { print("saved"); } else { print("failed"); }
    // CONTROL! let ok = save("/dev/null/out.txt"); if !ok { print("failed"); } // BREAK!
    print("saved"); // BREAK!
}
