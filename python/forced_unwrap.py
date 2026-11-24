def find(key: int) -> int | None:
    return 36 if key == 1 else None


print("before", flush=True)
found = find(2)
assert found is not None # CONTROL! if found is None: print("missing")
print(found + 1) # CONTROL! else: print(found + 1)
