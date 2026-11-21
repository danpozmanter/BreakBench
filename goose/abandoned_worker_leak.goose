import std;
import os;

struct Seed { value: i64 }
struct Answer { values: i64[] }

thread_fn answer() {
    let seed = qget<Seed>();
    var values: i64[>..] = [];
    for i in 8192 { values.push(seed.value); }
    qput(Answer { values: copy(values) });
}

fn main() {
    let rounds, ok = parse_int(args()[1]);
    for i in rounds {
        qput(Seed { value: i });
        qput(Seed { value: i + 1 });
        thread_spawn(answer);
        thread_spawn(answer);
        let first = qget<Answer>();
        assert(first.values.len == 8192);
    }
    print("done");
}
