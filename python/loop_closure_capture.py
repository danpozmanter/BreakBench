fs = []
for i in range(3):
    fs.append(lambda: i)
print(",".join(str(f()) for f in fs))
