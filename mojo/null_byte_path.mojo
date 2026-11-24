from std.os import makedirs


def main() raises:
    makedirs("/tmp/bb_files", exist_ok=True)
    with open("/tmp/bb_files/report.txt", "w") as seed:
        seed.write("secret\n")

    var name = String("report.txt\0.png")
    # CONTROL! if "\0" in name: print("rejected"); return
    if not name.endswith(".png"):
        print("rejected")
        return
    try:
        with open("/tmp/bb_files/" + name, "r") as image:
            print(image.read(), end="")
    except:
        print("rejected")
