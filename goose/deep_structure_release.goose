import std;
import os;

struct Node { value: i64, next: i64 }

fn build_and_release(n: i64) -> i64 {
    var nodes: Node[>..] = [];
    var head = -1;
    for i in n {
        nodes.push(Node { value: i, next: head });
        head = nodes.len - 1;
    }
    return nodes[head].value;
}

fn main() {
    let n, ok = parse_int(args()[1]);
    build_and_release(n);
    print("done");
}
