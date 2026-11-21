import std;
import os;

struct Frame { buf: i64[4], secret: i64 }

fn main() {
    let f = Frame { buf: [1, 2, 3, 4], secret: 42 };
    let idx, ok = parse_int(args()[1]);
    print(f.buf[idx]);
}
