// LEVEL: LANGUAGE

thread_fn work(n: i64) {
    if n == 0 { abort("boom"); }
}

fn main() {
    let id = thread_spawn_contained(work, 0);
    if !thread_wait(id) {
        print("worker crashed");
    }
}
