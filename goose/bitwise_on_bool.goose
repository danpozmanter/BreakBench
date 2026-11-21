fn main() {
    let s = "abc";
    if s.len > 0 && s[0] == 'a' { print("yes"); }
    if (s.len > 0) & (s[0] == 'a') { print("both"); } // BREAK!
}
