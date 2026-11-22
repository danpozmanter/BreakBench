def main() raises:
    with open("/dev/full", "w") as f:
        f.write("data\n")
    print("saved")
