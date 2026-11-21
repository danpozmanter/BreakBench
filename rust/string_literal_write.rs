fn main() {
    let greeting = "hello";
    greeting[0] = 'j'; // CONTROL! let greeting = format!("j{}", &greeting[1..]);
    println!("{greeting}");
}
