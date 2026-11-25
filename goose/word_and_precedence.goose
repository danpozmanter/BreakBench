import std;
import os;

fn main() {
    let ready = args()[1] == "yes";
    let approved = args()[2] == "yes";
    let ok = ready && approved;
    print(if ok { "go" } else { "wait" });
}
