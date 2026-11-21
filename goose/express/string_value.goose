// LEVEL: LANGUAGE

import std;

fn main() {
    var a: u8[>..] = [];
    a.append("abc");
    var b = a;
    b.append("d");
    print(a);
}
