import std;
import os;

fn process(request: const u8[:], id: i64) -> bool {
    var buf: u8[>..] = [];
    buf.resize(4096, 0);
    var text: u8[>..] = [];
    format(text, request, "#", id);
    for i in text.len { buf[i] = text[i]; }
    if buf[0] != '{' { return false; }
    return true;
}

fn main() {
    let n, ok = parse_int(args()[1]);
    var failures = 0;
    for i in n {
        if !process("not json", i) { failures += 1; }
    }
    print(if failures == n { "done" } else { "unexpected" });
}
