// LEVEL: LANGUAGE

thread_fn work(n: i64) {
    if n <= 0 { abort("bad input"); }
}

fn main() {
    let id = thread_spawn_contained(work, 0);
    var msg: u8[>..] = [];
    if !thread_wait(id, msg) {
        print("worker failed: ", msg);
    }
}
