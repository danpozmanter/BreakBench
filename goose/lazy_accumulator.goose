import std;
import os;

struct Message { data: u8[4096] }

fn main() {
    let count, ok = parse_int(args()[1]);
    var total = 0;
    for i in count {
        var message = Message { .. };
        total += message.data.len;
    }
    print(total);
}
