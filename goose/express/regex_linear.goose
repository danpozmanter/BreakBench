// LEVEL: STD

import regex;

fn main() {
    let text = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa!";
    let re = regex::compile("(a+)+");
    let start, end = regex::find(re, text);
    print(if start == 0 && end == text.len { "match" } else { "no match" });
}
