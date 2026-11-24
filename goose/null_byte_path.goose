import std;
import os;

fn main() {
    make_dir("/tmp/bb_files");
    write_file("/tmp/bb_files/report.txt", "secret\n");

    let name = "report.txt\0.png";
    if !ends_with(name, ".png") {
        print("rejected");
        return;
    }
    var text: u8[>..] = [];
    if read_file(str("/tmp/bb_files/", name), text) {
        write_stdout(text);
    } else {
        print("rejected");
    }
}
