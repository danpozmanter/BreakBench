// LEVEL: STD

use std::fs::{self, OpenOptions};
use std::os::unix::fs::{OpenOptionsExt, PermissionsExt};

fn main() -> std::io::Result<()> {
    let path = "/tmp/bb_perm.txt";
    let _ = fs::remove_file(path);
    OpenOptions::new().write(true).create_new(true).mode(0o600).open(path)?;
    let mode = fs::metadata(path)?.permissions().mode() & 0o777;
    println!("{mode:o}");
    fs::remove_file(path)
}
