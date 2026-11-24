import std;
import os;

fn main() {
    let line = args()[1];
    let pos = position(line, ':');
    print(line[pos + 1..]); // CONTROL! if pos < 0 { print("no colon"); } else { print(line[pos + 1..]); }
}
