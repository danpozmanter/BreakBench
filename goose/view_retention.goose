import std;
import os;

fn main() {
    let n, ok = parse_int(args()[1]);
    var heads: (u8[16])[>..] = [];
    var prefixes: (u8[..16])[>..] = [];
    for i in n {
        var buf: u8[>..] = [];
        buf.resize(32768, (i % 256) as! u8);
        var head: u8[16] = [0; 16];
        for j in 16 { head[j] = buf[j]; }
        heads.push(head);
        var big: u8[>..] = [];
        big.resize(32768, (97 + i % 26) as! u8);
        var prefix: u8[..16] = "";
        format(prefix, big[..16]);
        prefixes.push(prefix);
    }
    print(heads.len);
}
