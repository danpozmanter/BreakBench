def base() -> int:
    return BASE


LIMIT = base() * 2  # BREAK!
BASE = int("10")
# CONTROL! LIMIT = base() * 2

print(LIMIT)
