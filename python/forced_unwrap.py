def find(key: int) -> int | None:
    return 36 if key == 1 else None


print("before", flush=True)
found = find(2)
assert found is not None
print(found + 1)
