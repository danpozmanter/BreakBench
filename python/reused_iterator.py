xs = [1, 2, 3, 4, 5, 6]
evens = (x for x in xs if x % 2 == 0)
total = sum(evens)
count = sum(1 for _ in evens)
print(total, count)
