var counts = [Int](repeating: 0, count: 256)
for b in CommandLine.arguments[1].utf8 {
    counts[Int(b)] += 1
}
print(counts[128...].reduce(0, +))
