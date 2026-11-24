import std;
import os;

fn main() {
    let x, ok = parse_flt(args()[1]);
    let v = x as i64; // CONTROL! var out: u8[>..] = []; format_flt_exact(out, x, 0);
    print(v); // CONTROL! print(out);
}
