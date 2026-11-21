// LEVEL: LANGUAGE

import os;

thread_fn slow(n: i64) {
    sleep_ms(50);
    qput(n);
}

fn main() {
    let id = thread_spawn(slow, 7);
    print("started");
    let v = qget<i64>();
    thread_wait(id);
    print(v);
}
