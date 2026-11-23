import std;

struct Wake { ok: bool }

thread_fn worker() {
    let woken = qget<Wake>();
    print("done");
}

fn main() {
    qput(Wake { ok: true });
    let t = thread_spawn(worker);
    thread_wait(t);
}
