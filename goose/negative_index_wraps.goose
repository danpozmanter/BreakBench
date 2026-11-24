import std;
import os;

fn main() {
    let readings: i64[3] = [10, 20, 30];
    let i, ok = parse_int(args()[1]);
    print(readings[i] - readings[i - 1]); // CONTROL! if i > 0 { print(readings[i] - readings[i - 1]); } else { print("no previous"); }
}
