// LEVEL: LANGUAGE

fn main() {
    let o: i64? = null;
    let n = o + 1; // REJECT!
    print(if o == null { "none" } else { "some" });
}
