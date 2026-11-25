import std;
import os;

struct Rec { data: u8[4096] }

fn touch() -> i64 {
    var rec = Rec { .. };
    for i in 4096 { rec.data[i] = 1; }
    return rec.data[0] as i64;
}

fn main() {
    let n, ok = parse_int(args()[1]);
    var seen = 0;
    for i in n { seen += touch(); }
    print(if seen == n { "done" } else { "lost" });
}
