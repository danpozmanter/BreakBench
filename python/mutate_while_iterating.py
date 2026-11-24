xs = [1, 2, 2, 3]
for x in xs: # CONTROL! xs = [x for x in xs if x != 2]
    if x == 2: # BREAK!
        xs.remove(x) # BREAK!
print(",".join(str(x) for x in xs))
