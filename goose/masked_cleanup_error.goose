import std;

fn report_write() -> i64 { return 1; }

fn report_close() -> i64 { return 2; }

fn save() -> i64 {
    let status = report_write();
    let closed = report_close();
    if status != 0 { return status; }
    return closed;
}

fn main() {
    let status = save();
    print(if status == 1 { "disk full" } else { "close failed" });
}
