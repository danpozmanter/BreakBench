let ids = [10, 20, 30]
let id = CommandLine.arguments[1]
print(ids.contains(id) ? "found" : "missing") // CONTROL! print(ids.contains(Int(id)!) ? "found" : "missing")
