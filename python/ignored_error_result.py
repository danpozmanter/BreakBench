def save(path: str) -> None:
    with open(path, "w") as f:
        f.write("data")


save("/dev/null/out.txt") # BREAK!
print("saved") # BREAK!
# CONTROL! try:
    # CONTROL! save("/dev/null/out.txt")
    # CONTROL! print("saved")
# CONTROL! except OSError:
    # CONTROL! print("failed")
