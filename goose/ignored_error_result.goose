import os;

fn save(path: const u8[:]) -> bool {
    return write_file(path, "data");
}

fn main() {
    save("/nonexistent/dir/out.txt"); // BREAK!
    // CONTROL! let ok = save("/nonexistent/dir/out.txt"); if !ok { print("failed"); }
    print("saved");
}
