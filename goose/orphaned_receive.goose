import std;
import os;

struct Answer { value: i64 } // CONTROL! struct Answer { value: i64, failed: bool }

thread_fn worker() {
    let n, ok = parse_int("x");
    if !ok { return; } // CONTROL! if !ok { qput(Answer { value: 0, failed: true }); return; }
    qput(Answer { value: n }); // CONTROL! qput(Answer { value: n, failed: false });
}

fn main() {
    thread_spawn(worker);
    let answer = qget<Answer>();
    print(answer.value); // CONTROL! if answer.failed { print("failed"); } else { print(answer.value); }
}
