import std;
import os;

struct Saved { count: i64 }

thread_fn save() {
    sleep_ms(50);
    qput(Saved { count: 1 });
}

fn main() {
    var store = 0;
    let task = thread_spawn(save);
    print(store); // CONTROL! thread_wait(task); store += qget<Saved>().count; print(store);
}
