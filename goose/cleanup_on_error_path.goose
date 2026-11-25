import std;
import os;

fn export_rows(rows: const u8[:][:]) -> bool {
    let path = "/tmp/bb_scratch/export.csv";
    var text: u8[>..] = [];
    text.append("qty\n");
    if !write_file(path, text) { return false; }
    for row in rows {
        let qty, ok = parse_int(row);
        if !ok { return false; } // BREAK!
        // CONTROL! if !ok { delete_file(path); return false; }
        format_int(text, qty, 10, 0, ' ');
        text.push('\n');
        if !write_file(path, text) { return false; }
    }
    delete_file(path);
    return true;
}

fn main() {
    let rows = ["3", "x", "5"];
    if !export_rows(rows) { print("export failed"); }
}
