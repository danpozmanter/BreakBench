import std;

struct Items { values: i64[3] }
struct Go { ok: bool }

thread_fn worker() {
    let received = qget<Items>();
    let signal = qget<Go>();
    print(received.values[0]);
}

fn main() {
    let t = thread_spawn(worker);
    var list = Items { values: [1, 2, 3] };
    qput(list);
    list.values[0] = 99;
    qput(Go { ok: true });
    thread_wait(t);
}
