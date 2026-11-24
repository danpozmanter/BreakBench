def count(xs: list[int]) -> int:
    xs.sort() # CONTROL! xs = sorted(xs)
    return len(xs)


items = [3, 1, 2]
count(items)
print(items[0])
