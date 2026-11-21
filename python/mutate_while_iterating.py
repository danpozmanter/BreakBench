xs = [1, 2, 2, 3]
for x in xs:
    if x == 2:
        xs.remove(x)
print(",".join(str(x) for x in xs))
