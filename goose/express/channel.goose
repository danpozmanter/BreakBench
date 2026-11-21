// LEVEL: LANGUAGE

thread_fn worker(n: i64) {
    for i in n {
        qput(i + 1);
    }
}

fn main() {
    let id = thread_spawn(worker, 3);
    let a = qget<i64>();
    let b = qget<i64>();
    let c = qget<i64>();
    thread_wait(id);
    print(a, " ", b, " ", c);
}
