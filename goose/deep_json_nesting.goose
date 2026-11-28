import std;
import os;
import json;

fn main() {
    let depth, ok = parse_int(args()[1]);
    // CONTROL! if depth > 1000 { print("refused"); return; }
    var text: u8[>..] = [];
    for i in 0..depth { text.push('['); }
    for i in 0..depth { text.push(']'); }
    var doc: json::Node[>..] = [];
    var decoded: u8[>..] = [];
    let root, err = json::parse(text, doc, decoded);
    guard root else { print("refused"); return; }
    print("parsed");
}
