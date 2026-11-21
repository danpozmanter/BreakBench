import std;
import os;
import dictionary;

fn main() {
    var stock = dictionary<u8[..16], i64> {};
    stock.insert("apple", 3);
    stock.insert("plum", 4);
    let name: u8[..16] = args()[1];
    print(stock.get(name) + 5); // CONTROL! print(stock.contains(name));
}
