// LEVEL: STD

import std;
import json;

fn main() {
    var doc: json::Node[>..] = [];
    var decoded: u8[>..] = [];
    let good, good_err = json::parse("{\"port\": 8080, \"debug\": true}", doc, decoded);
    let port, ok = json::as_i64(json::member(good, "port"));
    var bad_doc: json::Node[>..] = [];
    var bad_decoded: u8[>..] = [];
    let bad, bad_err = json::parse("{port: 8080}", bad_doc, bad_decoded);
    if bad == null {
        print(port, " invalid");
    } else {
        print(port, " valid");
    }
}
