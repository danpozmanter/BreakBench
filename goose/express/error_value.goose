// LEVEL: LANGUAGE

import std;

enum Port {
    Ok { value: i64 },
    Err { code: i64 },
}

fn parse_port(s: u8[:]) -> Port {
    let p, ok = parse_int(s);
    if ok {
        return Port.Ok { value: p };
    }
    return Port.Err { code: 1 };
}

fn main() {
    let r = match parse_port("x") {
        Ok => "port",
        Err => "error",
    };
    print(r);
}
