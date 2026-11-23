import os

os.makedirs("/tmp/bb_files", exist_ok=True)
with open("/tmp/bb_files/report.txt", "w") as seed:
    seed.write("secret\n")

name = "report.txt\0.png"
if not name.endswith(".png"):
    print("rejected")
else:
    try:
        with open("/tmp/bb_files/" + name) as image:
            print(image.read(), end="")
    except (OSError, ValueError):
        print("rejected")
