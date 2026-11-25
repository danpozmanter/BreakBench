use std::fs;

const LOCK: &str = "/tmp/bb_scratch/reader.lock";

struct Rows {
    lines: std::vec::IntoIter<&'static str>,
}

fn rows() -> Rows {
    fs::write(LOCK, "").unwrap();
    Rows { lines: vec!["alpha", "beta", "gamma"].into_iter() }
}

impl Iterator for Rows {
    type Item = &'static str;

    fn next(&mut self) -> Option<&'static str> {
        self.lines.next()
    }
}

impl Drop for Rows {
    fn drop(&mut self) {
        let _ = fs::remove_file(LOCK);
    }
}

fn main() {
    for line in rows() {
        println!("{line}");
        break;
    }
}
