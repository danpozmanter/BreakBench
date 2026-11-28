import std;
import json;

fn main() {
    var doc: json::Node[>..] = [];
    var decoded: u8[>..] = [];
    let root, err = json::parse("{\"name\": \"Ada\"}", doc, decoded); // CONTROL! let root, err = json::parse("{\"name\": \"Ada\", \"age\": 36}", doc, decoded);
    guard root else { abort(err); }
    let age, ok = json::as_i64(json::member(root, "age"));
    print(age + 1);
}
