import std;
import os;

struct Frame { buf: i64[4], sentinel: i64 }

fn main() {
    var f = Frame { buf: [0; 4], sentinel: 7 };
    let idx, ok = parse_int(args()[1]);
    f.buf[idx] = 99; // CONTROL! if idx >= 0 && idx < 4 { f.buf[idx] = 99; }
    print(f.sentinel);
}
