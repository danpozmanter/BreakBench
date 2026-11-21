let stock = ["apple": 3, "plum": 4]
let name = CommandLine.arguments[1]
print(stock[name] + 5) // CONTROL! if let n = stock[name] { print(n + 5) } else { print("unknown") }
