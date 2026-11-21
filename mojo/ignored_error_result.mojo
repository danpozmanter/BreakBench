def save(path: String) raises:
    with open(path, "w") as f:
        f.write("data")


def main() raises:
    save("/nonexistent/dir/out.txt")
    print("saved")
