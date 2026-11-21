import std;
import os;

fn main() {
    var status = "pending";
    if args()[1] == "ok" {
        let status = "done"; // CONTROL! status = "done";
        write_stderr(status);
    }
    print(status);
}
