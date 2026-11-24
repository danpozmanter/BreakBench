import std;
import os;

fn main() {
    let name = "a👍b";
    let n, ok = parse_int(args()[1]);
    print(name[0..n]); // CONTROL! var i = 0; for k in n { if i < name.len { i += 1; while i < name.len && (name[i] & 0xC0) == 0x80 { i += 1; } } } print(name[0..i]);
}
