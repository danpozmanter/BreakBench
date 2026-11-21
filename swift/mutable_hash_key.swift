var seen = Set<[Int]>()
var key = [1, 2]
seen.insert(key)
key[0] = 9
for e in seen {
    print(seen.contains(e) ? "found" : "lost")
}
