import std;
import os;

fn main() {
    let n, ok = parse_int(args()[1]);
    write_file("/tmp/bb_fd.txt", "x");
    for i in n {
        var data: u8[>..] = [];
        read_file("/tmp/bb_fd.txt", data);
    }
    print("done");
}
