// LEVEL: LANGUAGE

import os;

thread_fn spin(n: i64) {
    var stop = false;
    while !stop {
        let v, got = qget<bool>(1);
        stop = got;
    }
}

fn main() {
    let id = thread_spawn(spin, 0);
    sleep_ms(20);
    qput(true);
    thread_wait(id);
    print("stopped");
}
