// LEVEL: STD

import std;

fn main() {
    var q: i64[>..<] = [];
    heap_push(q, 3);
    heap_push(q, 1);
    heap_push(q, 2);
    let a = heap_pop(q);
    let b = heap_pop(q);
    let c = heap_pop(q);
    print(a, " ", b, " ", c);
}
