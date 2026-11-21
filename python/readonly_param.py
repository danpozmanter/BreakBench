def count(xs: list[int]) -> int:
    xs.sort()
    return len(xs)


items = [3, 1, 2]
count(items)
print(items[0])
