// LEVEL: LANGUAGE

fn use(fail: bool) -> bool {
    defer print("released");
    if fail {
        return false;
    }
    return true;
}

fn main() {
    use(false);
    use(true);
}
