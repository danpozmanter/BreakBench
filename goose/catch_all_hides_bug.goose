import std;

fn parse_order(line: const u8[:]) -> i64, bool {
    let parts = split(line, ',');
    return parse_int(parts[2]); // BREAK!
    // CONTROL! return parse_int(parts[1]);
}

fn main() {
    let qty, ok = parse_order("widget,5");
    if !ok {
        print("invalid order");
        return;
    }
    print(qty);
}
