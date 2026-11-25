from std.os import remove
from std.sys import argv, exit


def check_args() -> Bool:
    for arg in argv():
        if arg == "--version":
            print("1.0")
            exit(0) # BREAK!
            # CONTROL! return True
    return False


def main() raises:
    var lock = "/tmp/bb_scratch/run.lock"
    with open(lock, "w") as f:
        f.write("")
    try:
        if check_args():
            return
        print("working")
    finally:
        remove(lock)
