def save(path: String) raises:
    with open(path, "w") as f:
        f.write("data")


def main() raises:
    save("/dev/null/out.txt") # BREAK!
    print("saved") # BREAK!
    # CONTROL! try:
        # CONTROL! save("/dev/null/out.txt")
        # CONTROL! print("saved")
    # CONTROL! except:
        # CONTROL! print("failed")
