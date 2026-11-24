import sys


def find_name(user_id: int) -> str | None:
    return "alice" if user_id == 1 else None


name = find_name(int(sys.argv[1]))
print(f"hello, {name}") # CONTROL! print(f"hello, {name or 'nobody'}")
