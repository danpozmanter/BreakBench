import std;
import os;

struct Answer { value: i64 }

thread_fn worker() {
    let n, ok = parse_int("x");
    if !ok { return; }
    qput(Answer { value: n });
}

fn main() {
    thread_spawn(worker);
    let answer = qget<Answer>();
    print(answer.value);
}
