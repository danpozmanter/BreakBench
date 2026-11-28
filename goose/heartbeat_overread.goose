import std;
import os;

fn main() {
    let claimed, ok = parse_int(args()[1]);
    var buf: u8[>..] = "hiSECRET-KEY-0042";
    let payload = buf[0..2];
    // CONTROL! if claimed > 2 { print("invalid"); return; }
    let reply = payload[0..claimed];
    print(reply);
}
