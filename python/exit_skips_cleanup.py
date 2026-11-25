import os
import sys

LOCK = "/tmp/bb_scratch/run.lock"


def check_args() -> bool:
    if "--version" in sys.argv[1:]:
        print("1.0")
        sys.exit(0)
    return False


def main() -> None:
    open(LOCK, "w").close()
    try:
        if check_args():
            return
        print("working")
    finally:
        os.remove(LOCK)


main()
