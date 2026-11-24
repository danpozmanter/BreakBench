from collections.abc import Callable

fs: list[Callable[[], int]] = []
# CONTROL! def make(j: int) -> Callable[[], int]: return lambda: j
for i in range(3):
    fs.append(lambda: i) # CONTROL! fs.append(make(i))
print(",".join(str(f()) for f in fs))
