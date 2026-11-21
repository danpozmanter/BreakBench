// LEVEL: STD

use std::process::Command;
use std::thread::sleep;
use std::time::Duration;

fn main() -> std::io::Result<()> {
    let mut child = Command::new("sleep").arg("10").spawn()?;
    sleep(Duration::from_millis(100));
    child.kill()?;
    let status = child.wait()?;
    println!("{}", if status.success() { "finished" } else { "killed" });
    Ok(())
}
