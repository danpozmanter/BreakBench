import std;
import os;
import json;

fn main() {
    let count, ok = parse_int(args()[1]);
    let mean = 0.0 / (count as f64);
    var text: u8[>..] = [];
    text.push('{');
    json::format_key(text, "mean");
    json::format_number(text, mean); // CONTROL! if mean != mean { print("refused"); return; } json::format_number(text, mean);
    text.push('}');
    print(text);
}
