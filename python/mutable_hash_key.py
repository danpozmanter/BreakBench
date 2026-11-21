seen = set()
key = [1, 2]
seen.add(key)
key[0] = 9
for e in seen:
    print("found" if e in seen else "lost")
