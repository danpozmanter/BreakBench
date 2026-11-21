// LEVEL: LANGUAGE

struct Resource;

impl Drop for Resource {
    fn drop(&mut self) { println!("released"); }
}

fn use_it(fail: bool) -> Result<(), String> {
    let _r = Resource;
    if fail { return Err("bad".into()); }
    Ok(())
}

fn main() {
    let _ = use_it(false);
    let _ = use_it(true);
}
