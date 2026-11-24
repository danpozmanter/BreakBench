v: int | str = 42
print(len(v)) # CONTROL! print(len(v) if isinstance(v, str) else "not text")
