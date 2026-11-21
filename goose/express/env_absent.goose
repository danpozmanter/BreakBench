// LEVEL: STD

import os;

fn main() {
    var value: u8[>..] = [];
    print(if env("BB_UNSET", value) { "present" } else { "absent" });
}
