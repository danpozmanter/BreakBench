var xs = [1, 2, 2, 3]
for x in xs {
    if x == 2 {
        xs.remove(at: xs.firstIndex(of: x)!)
    }
}
print(xs.map(String.init).joined(separator: ","))
