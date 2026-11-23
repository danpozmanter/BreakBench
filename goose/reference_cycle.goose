import std;
import os;

struct Node { data: u8[4096], other: Node? }

fn pair() {
    var parent = Node { .. };
    var child = Node { .. };
    for i in 4096 { parent.data[i] = 1; child.data[i] = 1; }
    parent.other .= &child;
    child.other .= &parent;
}

fn main() {
    let n, ok = parse_int(args()[1]);
    for i in n { pair(); }
    print("done");
}
