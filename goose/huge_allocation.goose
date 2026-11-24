import std;
import os;

fn main() {
    let n, ok = parse_int(args()[1]);
    // CONTROL! if n > 1073741824 { print("too large"); return; }
    var buf: u8[>..] = [];
    buf.resize(n, 0);
    buf[n - 1] = 1;
    print(buf.len);
}
