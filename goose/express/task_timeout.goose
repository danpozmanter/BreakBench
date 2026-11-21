// LEVEL: LANGUAGE

import os;

thread_fn slow(n: i64) {
    sleep_ms(5000);
    qput(n);
}

fn main() {
    thread_spawn(slow, 1);
    let v, got = qget<i64>(100);
    print(if got { "done" } else { "timed out" });
}
