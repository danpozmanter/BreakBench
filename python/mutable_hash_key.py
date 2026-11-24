seen = set() # CONTROL! seen: set[tuple[int, int]] = set()
key = [1, 2] # CONTROL! key = (1, 2)
seen.add(key)
key[0] = 9 # BREAK!
for e in seen:
    print("found" if e in seen else "lost")
