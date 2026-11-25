import std;
import os;

struct Rows { index: i64 }

fn rows() -> Rows {
    write_file("/tmp/bb_scratch/reader.lock", "");
    return Rows { index: 0 };
}

fn next(it: Rows&) -> const u8[:], bool {
    let lines = ["alpha", "beta", "gamma"];
    if it.index < 3 {
        it.index += 1;
        return lines[it.index - 1], true;
    }
    delete_file("/tmp/bb_scratch/reader.lock");
    return "", false;
}

fn main() {
    var it = rows();
    while true {
        let line, ok = next(it);
        if !ok { break; }
        print(line);
        break; // BREAK!
    }
}
