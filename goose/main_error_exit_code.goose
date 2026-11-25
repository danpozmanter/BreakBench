import std;
import os;

fn main() {
    var text: u8[>..] = [];
    if !read_file("/nonexistent/bb.conf", text) {
        write_stderr("config missing\n");
        return; // BREAK!
        // CONTROL! exit(1);
    }
    print(text.len);
}
