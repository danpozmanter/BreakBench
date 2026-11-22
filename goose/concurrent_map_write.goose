// Goose threads never share memory: a thread cannot reach main's map, so each builds its own keys and sends them back.
import std;
import os;
import dictionary;

struct Job { t: i64 }
struct Keys { keys: i64[] }

thread_fn fill() {
    let job = qget<Job>();
    var keys: i64[>..] = [];
    for i in 100000 { keys.push(job.t * 100000 + i); }
    qput(Keys { keys: copy(keys) });
}

fn main() {
    var m = dictionary<i64, bool> {};
    for t in 8 {
        qput(Job { t: t });
        thread_spawn(fill);
    }
    for t in 8 {
        let got = qget<Keys>();
        for k in got.keys { m.insert(k, true); }
    }
    print(m.count);
}
