import std;
import os;

fn main() {
    let n, ok = parse_int(args()[1]);
    var buf: u8[>..] = [];
    buf.resize(n, 0);
    buf[n - 1] = 1;
    print(buf.len);
}
