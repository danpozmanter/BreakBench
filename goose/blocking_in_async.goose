import std;
import os;

struct Done { ok: bool }

thread_fn job() {
    sleep_ms(500);
    qput(Done { ok: true });
}

fn main() {
    let start = clock_ns();
    thread_spawn(job);
    thread_spawn(job);
    let a = qget<Done>();
    let b = qget<Done>();
    print(if clock_ns() - start < 800000000 { "concurrent" } else { "serial" });
}
