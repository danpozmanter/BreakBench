import std;
import os;

fn main() {
    let count, ok = parse_int(args()[1]);
    // CONTROL! if count > 134217728 { print("too large"); return; }
    let size = count * 8;
    var records: u8[>..] = [];
    records.resize(size, 0);
    records[8] = 99;
    print("stored");
}
