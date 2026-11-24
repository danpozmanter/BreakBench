// Goose threads never share memory: a thread cannot reach main's counter, so each counts on its own and sends its count back.
import std;
import os;

struct Count { n: i64 }

thread_fn work() {
    var n: i64 = 0;
    for i in 1000000 { n += 1; }
    qput(Count { n: n });
}

fn main() {
    var counter: i64 = 0;
    for t in 8 { thread_spawn(work); }
    for t in 8 { counter += qget<Count>().n; }
    print(counter);
}
