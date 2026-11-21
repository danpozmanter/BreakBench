// LEVEL: STD

import regex;

fn whole(re: regex::Regex&, text: u8[:]) -> bool {
    let start, end = regex::find(re, text);
    return start == 0 && end == text.len;
}

fn main() {
    let re = regex::compile("[a-z]+[0-9]{2}");
    print(whole(re, "abc12"), " ", whole(re, "abc1"));
}
