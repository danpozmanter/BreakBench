fn write_report() -> bool {
    return false;
}

fn close_log() {}

fn save_report() -> bool {
    let ok = write_report();
    close_log();
    return ok;
}

fn main() {
    print(if save_report() { "saved" } else { "failed" });
}
