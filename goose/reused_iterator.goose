fn main() {
    let xs = [1, 2, 3, 4, 5, 6];
    var evens: i64[>..] = [];
    for x in xs { if x % 2 == 0 { evens.push(x); } }
    var total = 0;
    for x in evens { total += x; }
    print(total, " ", evens.len);
}
