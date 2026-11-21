import std;
import os;

const HEADER = 5;

fn main() {
    let message = args()[1];
    let payload = message.len - HEADER;
    if payload < 0 {
        print("short");
    } else {
        print(payload);
    }
}
