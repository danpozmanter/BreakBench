// Goose threads never share memory: a thread cannot reach main's count, so each counts its own and sends it back.
import std;
import os;

struct Total { n: i64 }

thread_fn add() {
    var mine = 0;
    for i in 1000000 { mine += 1; }
    qput(Total { n: mine });
}

fn main() {
    var count = 0;
    thread_spawn(add);
    thread_spawn(add);
    count += qget<Total>().n;
    count += qget<Total>().n;
    print(count);
}
