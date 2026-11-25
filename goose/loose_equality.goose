import std;
import os;

fn main() {
    let code = args()[1];
    print(if code == 0 { "same" } else { "different" }); // CONTROL! print(if code == "0" { "same" } else { "different" });
}
