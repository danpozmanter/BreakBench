import sys


def cached_count(name: str) -> int | None:
    return 4 if name == "ada" else None


cached = cached_count(sys.argv[1])
count = cached if cached is not None else 0 + 1  # CONTROL! count = (cached if cached is not None else 0) + 1
print(count)
