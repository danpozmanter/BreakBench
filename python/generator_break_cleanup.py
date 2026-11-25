import os
from collections.abc import Iterator

LOCK = "/tmp/bb_scratch/reader.lock"


def rows() -> Iterator[str]:
    open(LOCK, "w").close()
    try:
        yield from ["alpha", "beta", "gamma"]
    finally:
        os.remove(LOCK)


for line in rows():
    print(line)
    break
