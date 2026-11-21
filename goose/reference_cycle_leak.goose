import std;
import os;

struct Node { next: i64, payload: u8[..2048] }
struct Obj { size: i64 }

fn payload_len(o: Obj&) -> i64 {
    return o.size;
}

fn main() {
    let n, ok = parse_int(args()[1]);
    var total = 0;
    for i in n {
        var nodes: Node[2];
        nodes[0].next = 1;
        nodes[1].next = 0;
        var o = Obj { size: 2048 };
        total += payload_len(o);
    }
    print(if total == 0 { "unreachable" } else { "done" });
}
