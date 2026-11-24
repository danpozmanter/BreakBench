import std;
import json;

fn main() {
    var doc: json::Node[>..] = [];
    var decoded: u8[>..] = [];
    let root, err = json::parse("{\"id\": 9007199254740993}", doc, decoded);
    guard root else { abort(err); }
    let id, ok = json::as_i64(json::member(root, "id"));
    print(id);
}
