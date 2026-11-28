import std;
import os;

fn main() {
    let text = args()[1];
    var counts: i64[>..] = [];
    for i in 0..256 { counts.push(0); }
    for b in text { counts[b] += 1; }
    var high = 0;
    for i in 128..256 { high += counts[i]; }
    print(high);
}
