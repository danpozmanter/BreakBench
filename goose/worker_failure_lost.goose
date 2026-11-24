import std;
import os;

struct Item { text: u8[] }
struct Total { value: i64 } // CONTROL! struct Total { value: i64, failed: bool }

thread_fn add_all() {
    var total = 0;
    loop {
        let item = qget<Item>();
        guard item.text.len > 0 else { break; }
        let n, ok = parse_int(item.text);
        guard ok else { abort(str("bad number: ", item.text)); } // CONTROL! guard ok else { qput(Total { value: 0, failed: true }); return; }
        total += n;
    }
    qput(Total { value: total }); // CONTROL! qput(Total { value: total, failed: false });
}

fn main() {
    let worker = thread_spawn(add_all);
    for i in args().len - 1 { qput(Item { text: args()[i + 1] }); }
    qput(Item { text: "" });
    let total = qget<Total>();
    thread_wait(worker);
    print("total ", total.value); // CONTROL! if total.failed { print("failed"); } else { print("total ", total.value); }
}
