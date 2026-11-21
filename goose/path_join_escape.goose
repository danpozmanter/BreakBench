import std;
import os;

fn main() {
    let joined = str("/srv/app/uploads/", args()[1]);
    print(if joined[..17] == "/srv/app/uploads/" { "inside" } else { "escaped" });
}
