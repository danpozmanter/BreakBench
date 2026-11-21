// LEVEL: STD

import os;

fn main() {
    var buf: u8[16] = [0; 16];
    random_bytes(buf);
    let digits = "0123456789abcdef";
    var text: u8[>..] = [];
    for b in buf {
        text.push(digits[(b >> 4) as i64]);
        text.push(digits[(b & 15) as i64]);
    }
    print(text);
}
