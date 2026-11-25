import std;
import os;

fn total_until_stop(codes: const (u8[:])[:]) -> i64 {
    var total: i64 = 0;
    for c in codes {
        let code, ok = parse_int(c);
        match code {
            0 => { break; }, // CONTROL! 0 => { return total; },
            _ => { total += code; },
        }
    }
    return total;
}

fn main() {
    print(total_until_stop(args()[1..]));
}
